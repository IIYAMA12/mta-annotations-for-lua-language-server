/**
 * Compare ---@type fun(...) annotations against mtasa-blue handler signatures.
 *
 * Usage:
 *   node verify-syntax.js --mtasa-blue C:/path/to/mtasa-blue
 *   node verify-syntax.js --mtasa-blue ../mtasa-blue --name getPostFXValue
 *   node verify-syntax.js --mtasa-blue ../mtasa-blue --side client --format md
 */
import { mkdirSync, writeFileSync } from "node:fs";
import { parseArgs, printHelp } from "./lib/cli.js";
import { scanDefinitions } from "./lib/definitions.js";
import { compareSignatures, formatSignature } from "./lib/lua-signature.js";
import { buildSyntaxIndex, syntaxSummary } from "./lib/mtasa-blue-syntax.js";
import { resolveMtasaBlueRoot, scanMtasaBlue } from "./lib/mtasa-blue.js";
import { REPORTS_DIR } from "./lib/paths.js";

const options = parseArgs();

if (options.help || !options.mtasaBlue) {
  printHelp(
    "verify-syntax.js",
    "Compare annotation signatures against mtasa-blue ArgumentParser and legacy comment syntax.",
    [
      "node verify-syntax.js --mtasa-blue C:/path/to/mtasa-blue",
      "node verify-syntax.js --mtasa-blue ../mtasa-blue --name addBan",
      "node verify-syntax.js --mtasa-blue ../mtasa-blue --side server",
      "node verify-syntax.js --mtasa-blue ../mtasa-blue --format md",
    ]
  );
  process.exit(options.help ? 0 : 1);
}

let resolved;
try {
  resolved = resolveMtasaBlueRoot(options.mtasaBlue);
} catch (err) {
  console.error(err.message);
  process.exit(1);
}

const sides = options.side ? [options.side] : ["client", "server"];
if (options.side && !["client", "server"].includes(options.side)) {
  console.error(`Invalid --side ${options.side} (use client or server)`);
  process.exit(1);
}

const scan = scanMtasaBlue(resolved.root, { sides });
const inventory = scanDefinitions();

const mtasaNames = new Set(scan.functions.map((f) => f.name));
let targets = inventory.filter((fn) => mtasaNames.has(fn.name));

if (options.name) {
  targets = targets.filter((fn) => fn.name === options.name);
  if (!targets.length) {
    console.error(`Function not in repo or mtasa-blue scan: ${options.name}`);
    process.exit(1);
  }
}

const byName = new Map();
for (const fn of targets) {
  if (!byName.has(fn.name)) byName.set(fn.name, fn);
}

const syntaxByName = buildSyntaxIndex(scan, {
  onlyNames: options.name ? [options.name] : null,
});

const results = {
  ok: [],
  mismatch: [],
  missing_annotation: [],
  unverifiable: [],
  skipped: [],
};

for (const [name, fn] of byName) {
  const source = syntaxByName.get(name);
  const sourceSig = source?.extraction !== "none" ? source : null;
  const comparison = compareSignatures(sourceSig, fn.annotation);

  const entry = {
    name,
    file: fn.file,
    line: fn.line,
    extraction: source?.extraction ?? "none",
    sourcePath: source?.relativePath ?? null,
    sourceSyntax: sourceSig ? syntaxSummary(sourceSig) : null,
    annotationSyntax: fn.annotation?.kind === "function" ? formatSignature(fn.annotation) : fn.annotation?.raw ?? null,
    issues: comparison.issues ?? [],
  };

  if (fn.annotation?.kind === "other") {
    results.skipped.push({ ...entry, reason: "non-fun annotation (alias/union)" });
    continue;
  }

  results[comparison.status]?.push(entry);
}

const report = {
  generatedAt: new Date().toISOString(),
  mtasaBlueRoot: scan.root,
  sideFilter: options.side ?? null,
  checked: byName.size,
  extractableInSource: [...syntaxByName.values()].filter((s) => s.extraction !== "none").length,
  summary: {
    ok: results.ok.length,
    mismatch: results.mismatch.length,
    missing_annotation: results.missing_annotation.length,
    unverifiable: results.unverifiable.length,
    skipped: results.skipped.length,
  },
  results,
};

mkdirSync(REPORTS_DIR, { recursive: true });
writeFileSync(`${REPORTS_DIR}/syntax-verify.json`, JSON.stringify(report, null, 2));

if (options.format === "md") {
  const lines = [
    "# Syntax verification",
    "",
    `Root: \`${scan.root}\``,
    "",
    "| Status | Count |",
    "|--------|------:|",
    `| ok | ${report.summary.ok} |`,
    `| mismatch | ${report.summary.mismatch} |`,
    `| missing annotation | ${report.summary.missing_annotation} |`,
    `| unverifiable | ${report.summary.unverifiable} |`,
    `| skipped | ${report.summary.skipped} |`,
    "",
  ];

  for (const status of ["mismatch", "missing_annotation", "unverifiable"]) {
    const items = results[status];
    if (!items.length) continue;
    lines.push(`## ${status}`, "");
    for (const item of items.slice(0, 100)) {
      lines.push(`### \`${item.name}\` (${item.file}:${item.line})`, "");
      if (item.sourceSyntax) lines.push(`- Source: \`${item.sourceSyntax}\` (${item.extraction})`);
      if (item.annotationSyntax) lines.push(`- Annotation: \`${item.annotationSyntax}\``);
      for (const issue of item.issues) lines.push(`- ${issue}`);
      lines.push("");
    }
    if (items.length > 100) lines.push(`… and ${items.length - 100} more`, "");
  }

  writeFileSync(`${REPORTS_DIR}/syntax-verify.md`, lines.join("\n"));
  console.log(`Markdown: scripts/reports/syntax-verify.md`);
}

console.log(`mtasa-blue: ${scan.root}`);
console.log(`Checked: ${report.checked} repo functions present in mtasa-blue`);
console.log(`Extractable source signatures: ${report.extractableInSource}`);
console.log(`OK: ${report.summary.ok}`);
console.log(`Mismatch: ${report.summary.mismatch}`);
console.log(`Missing annotation: ${report.summary.missing_annotation}`);
console.log(`Unverifiable: ${report.summary.unverifiable}`);
console.log(`Skipped (alias/union): ${report.summary.skipped}`);
console.log(`Report: scripts/reports/syntax-verify.json`);

if (options.name) {
  const item = results.ok[0] ?? results.mismatch[0] ?? results.missing_annotation[0] ?? results.unverifiable[0];
  if (item) {
    console.log("");
    console.log(item.name);
    console.log(`  Source:   ${item.sourceSyntax ?? "(none)"} [${item.extraction}]`);
    console.log(`  Annotated: ${item.annotationSyntax ?? "(none)"}`);
    for (const issue of item.issues) console.log(`  ! ${issue}`);
  }
}

if (report.summary.mismatch > 0 || report.summary.missing_annotation > 0) {
  process.exit(1);
}
