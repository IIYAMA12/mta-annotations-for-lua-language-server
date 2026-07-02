import { mkdirSync, writeFileSync } from "node:fs";
import { parseArgs, printHelp } from "./lib/cli.js";
import { scanDefinitions } from "./lib/definitions.js";
import { scanMtasaBlue } from "./lib/mtasa-blue.js";
import { REPORTS_DIR } from "./lib/paths.js";
import { fetchWikiCategoryMembers, toPascalCase } from "./lib/wiki.js";

const options = parseArgs();

if (options.help) {
  printHelp("find-gaps.js", "Find MTA functions missing from definition files.", [
    "node find-gaps.js",
    "node find-gaps.js --side client",
    "node find-gaps.js --mtasa-blue C:/path/to/mtasa-blue",
    "node find-gaps.js --mtasa-blue ../mtasa-blue",
  ]);
  process.exit(0);
}

const inventory = scanDefinitions();
const repoByName = new Map();
for (const fn of inventory) {
  if (!repoByName.has(fn.name)) {
    repoByName.set(fn.name, []);
  }
  repoByName.get(fn.name).push(fn);
}

let sourceSets;
let sourceLabel;

if (options.mtasaBlue) {
  const scan = scanMtasaBlue(options.mtasaBlue);
  sourceSets = {
    client: new Set(scan.functions.filter((f) => f.runtimes.includes("client")).map((f) => f.name)),
    server: new Set(scan.functions.filter((f) => f.runtimes.includes("server")).map((f) => f.name)),
    shared: new Set(
      scan.functions
        .filter((f) => f.runtimes.includes("client") && f.runtimes.includes("server"))
        .map((f) => f.name)
    ),
  };
  sourceLabel = "mtasa-blue";
} else {
  const [client, server, shared] = await Promise.all([
    fetchWikiCategoryMembers("Client_functions"),
    fetchWikiCategoryMembers("Server_functions"),
    fetchWikiCategoryMembers("Shared_functions"),
  ]);
  sourceSets = {
    client: new Set(client),
    server: new Set(server),
    shared: new Set(shared),
  };
  sourceLabel = "wiki-api";
}

const sides = options.side ? [options.side] : ["client", "server", "shared"];
const missingSeen = new Set();
const missingInRepo = [];
const extraInRepo = [];
const sideMismatch = [];

for (const side of sides) {
  const source = sourceSets[side] ?? new Set();
  for (const fnName of source) {
    if (!repoByName.has(fnName)) {
      if (!missingSeen.has(fnName)) {
        missingSeen.add(fnName);
        missingInRepo.push({
          name: fnName,
          side,
          wiki: `https://wiki.multitheftauto.com/wiki/${toPascalCase(fnName)}`,
        });
      }
    } else if (sourceLabel === "wiki-api") {
      const defs = repoByName.get(fnName);
      const sidesPresent = new Set(defs.map((d) => d.side));
      if (side === "client" && !["client", "client-events", "dx", "gui", "engine"].some((s) => sidesPresent.has(s))) {
        sideMismatch.push({ name: fnName, expectedSide: side, found: defs });
      }
    }
  }
}

if (!options.side) {
  const allSource = new Set([...sourceSets.client, ...sourceSets.server, ...sourceSets.shared]);
  for (const [name, defs] of repoByName.entries()) {
    if (!allSource.has(name)) {
      extraInRepo.push({ name, definitions: defs });
    }
  }
}

const report = {
  generatedAt: new Date().toISOString(),
  source: sourceLabel,
  sideFilter: options.side,
  inventoryTotal: inventory.length,
  missing_in_repo: missingInRepo.sort((a, b) => a.name.localeCompare(b.name)),
  extra_in_repo: extraInRepo.sort((a, b) => a.name.localeCompare(b.name)),
  side_mismatch: sideMismatch.sort((a, b) => a.name.localeCompare(b.name)),
};

mkdirSync(REPORTS_DIR, { recursive: true });
writeFileSync(`${REPORTS_DIR}/gaps.json`, JSON.stringify(report, null, 2));

console.log(`Source: ${sourceLabel}`);
console.log(`Missing in repo: ${report.missing_in_repo.length}`);
console.log(`Extra in repo: ${report.extra_in_repo.length}`);
console.log(`Side mismatch: ${report.side_mismatch.length}`);
console.log(`Report: scripts/reports/gaps.json`);
if (sourceLabel === "mtasa-blue") {
  console.log(
    `Tip: run node scripts/mtasa-blue-functions.js --mtasa-blue "${options.mtasaBlue}" --compare for file mapping`
  );
}

if (report.missing_in_repo.length) {
  process.exit(1);
}
