/**
 * Extract Lua API functions from a local mtasa-blue clone and map them to annotation files.
 *
 * Only scans: Client/mods/deathmatch/logic/luadefs/*.cpp
 *             Server/mods/deathmatch/logic/luadefs/*.cpp
 *
 * Usage:
 *   node mtasa-blue-functions.js --mtasa-blue C:/path/to/mtasa-blue
 *   node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --side server
 *   node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --compare
 *   node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --source CLuaBanDefs.cpp
 *   node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --name getPostFXValue
 */
import { mkdirSync, writeFileSync } from "node:fs";
import { parseArgs, printHelp } from "./lib/cli.js";
import { scanDefinitions } from "./lib/definitions.js";
import {
  compareWithRepo,
  groupFunctionsByAnnotationFile,
  resolveMtasaBlueRoot,
  scanMtasaBlue,
} from "./lib/mtasa-blue.js";
import { REPORTS_DIR } from "./lib/paths.js";
import { wikiUrl } from "./lib/wiki.js";

const options = parseArgs();

if (options.help || !options.mtasaBlue) {
  printHelp(
    "mtasa-blue-functions.js",
    "Extract Lua functions from mtasa-blue luadefs and map to annotation files.",
    [
      "node mtasa-blue-functions.js --mtasa-blue C:/path/to/mtasa-blue",
      "node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --side server",
      "node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --compare",
      "node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --source CLuaPostfxDefs.cpp",
      "node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --name getPostFXValue",
      "node mtasa-blue-functions.js --mtasa-blue ../mtasa-blue --format md",
    ]
  );
  if (!options.mtasaBlue) process.exit(options.help ? 0 : 1);
}

let resolved;
try {
  resolved = resolveMtasaBlueRoot(options.mtasaBlue);
} catch (err) {
  console.error(err.message);
  process.exit(1);
}

const sides = options.side ? [options.side] : ["client", "server"];
if (!["client", "server"].includes(sides[0])) {
  console.error(`Invalid --side ${options.side} (use client or server)`);
  process.exit(1);
}

const scan = scanMtasaBlue(resolved.root, { sides });
let functions = scan.functions;

if (options.name) {
  functions = functions.filter((fn) => fn.name === options.name);
  if (!functions.length) {
    console.error(`Function not found in mtasa-blue scan: ${options.name}`);
    process.exit(1);
  }
}

if (options.source) {
  const needle = options.source.endsWith(".cpp") ? options.source : `${options.source}.cpp`;
  functions = functions.filter((fn) => fn.sources.some((s) => s.cppFile === needle));
}

const grouped = groupFunctionsByAnnotationFile({ ...scan, functions });

let comparison = null;
if (options.compare) {
  comparison = compareWithRepo({ ...scan, functions }, scanDefinitions());
}

const report = {
  generatedAt: new Date().toISOString(),
  mtasaBlueRoot: scan.root,
  scannedPaths: scan.scannedPaths,
  sideFilter: options.side ?? null,
  sourceFileCount: scan.sourceFileCount,
  functionCount: functions.length,
  groupedByAnnotationFile: grouped,
  functions,
  comparison: comparison
    ? {
        missingInRepo: comparison.missingInRepo,
        wrongFile: comparison.wrongFile,
        okCount: comparison.ok.length,
        extraInRepoCount: comparison.extraInRepo.length,
      }
    : null,
};

mkdirSync(REPORTS_DIR, { recursive: true });
writeFileSync(`${REPORTS_DIR}/mtasa-blue-functions.json`, JSON.stringify(report, null, 2));

if (options.format === "md") {
  const lines = [
    "# mtasa-blue function map",
    "",
    `Root: \`${scan.root}\``,
    `Functions: **${functions.length}**`,
    "",
  ];
  for (const [file, fns] of Object.entries(grouped)) {
    lines.push(`## ${file}`, "");
    for (const fn of fns) {
      lines.push(`- \`${fn.name}\` (${fn.runtimes.join("+")}) — ${fn.sources.map((s) => s.cppFile).join(", ")}`);
    }
    lines.push("");
  }
  writeFileSync(`${REPORTS_DIR}/mtasa-blue-functions.md`, lines.join("\n"));
  console.log(`Markdown: scripts/reports/mtasa-blue-functions.md`);
}

console.log(`mtasa-blue: ${scan.root}`);
console.log(`Scanned: ${scan.scannedPaths.client ? "client luadefs" : ""}${scan.scannedPaths.client && scan.scannedPaths.server ? " + " : ""}${scan.scannedPaths.server ? "server luadefs" : ""}`);
console.log(`Source files: ${scan.sourceFileCount}`);
console.log(`Functions: ${functions.length}`);

if (options.name) {
  const fn = functions[0];
  console.log("");
  console.log(`${fn.name}`);
  console.log(`  Runtimes: ${fn.runtimes.join(", ")}`);
  console.log(`  Suggested: ${fn.suggestedFiles.join(" | ")}`);
  console.log(`  Wiki: ${wikiUrl(fn.name)}`);
  for (const src of fn.sources) {
    console.log(`  Source: ${src.relativePath}`);
  }
} else if (options.source) {
  console.log("");
  for (const fn of functions) {
    console.log(`  ${fn.name} -> ${fn.primaryFile}`);
  }
} else {
  console.log("");
  console.log("By annotation file:");
  for (const [file, fns] of Object.entries(grouped)) {
    console.log(`  ${file}: ${fns.length}`);
  }
}

if (comparison) {
  console.log("");
  console.log(`Missing in repo: ${comparison.missingInRepo.length}`);
  console.log(`Wrong annotation file: ${comparison.wrongFile.length}`);
  console.log(`Matched: ${comparison.ok.length}`);
  console.log(`Extra in repo (not in mtasa-blue scan): ${comparison.extraInRepo.length}`);
}

console.log(`Report: scripts/reports/mtasa-blue-functions.json`);
