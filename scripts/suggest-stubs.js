import { readFileSync } from "node:fs";
import { join } from "node:path";
import { parseArgs, printHelp } from "./lib/cli.js";
import { REPORTS_DIR } from "./lib/paths.js";
import { wikiLinkMarkdown, wikiUrl } from "./lib/wiki.js";

const options = parseArgs();

if (options.help) {
  printHelp("suggest-stubs.js", "Print annotation stubs for missing functions.", [
    "node suggest-stubs.js --name createFoo",
    "node suggest-stubs.js",
  ]);
  process.exit(0);
}

function stubFor(name) {
  return `--[[
${wikiLinkMarkdown(name)}
]]
---@type fun(...): boolean Returns ...
function ${name}() end
`;
}

if (options.name) {
  console.log(stubFor(options.name));
  process.exit(0);
}

let names = [];
try {
  const gaps = JSON.parse(readFileSync(join(REPORTS_DIR, "gaps.json"), "utf8"));
  names = gaps.missing_in_repo?.slice(0, 20).map((x) => x.name) ?? [];
} catch {
  console.error("Run find-gaps.js first, or pass --name FunctionName");
  process.exit(1);
}

if (!names.length) {
  console.log("No missing functions in gaps report.");
  process.exit(0);
}

for (const name of names) {
  console.log(`// ${wikiUrl(name)}`);
  console.log(stubFor(name));
  console.log("");
}
