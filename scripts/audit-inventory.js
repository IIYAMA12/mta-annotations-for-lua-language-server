import { mkdirSync, writeFileSync } from "node:fs";
import { parseArgs, printHelp } from "./lib/cli.js";
import { inventoryToMarkdown, scanDefinitions } from "./lib/definitions.js";
import { REPORTS_DIR } from "./lib/paths.js";

const options = parseArgs();

if (options.help) {
  printHelp("audit-inventory.js", "Scan definition files and build a function inventory.", [
    "node audit-inventory.js",
    "node audit-inventory.js --file __client_definitions.lua",
    "node audit-inventory.js --format md",
  ]);
  process.exit(0);
}

const functions = scanDefinitions({ fileFilter: options.file });
const payload = {
  generatedAt: new Date().toISOString(),
  total: functions.length,
  functions,
};

if (options.format === "md") {
  console.log(inventoryToMarkdown(functions));
  process.exit(0);
}

mkdirSync(REPORTS_DIR, { recursive: true });
writeFileSync(`${REPORTS_DIR}/inventory.json`, JSON.stringify(payload, null, 2));
writeFileSync(`${REPORTS_DIR}/inventory.md`, inventoryToMarkdown(functions));

console.log(`Wrote ${functions.length} functions to scripts/reports/inventory.json`);
console.log(`Wrote scripts/reports/inventory.md`);
