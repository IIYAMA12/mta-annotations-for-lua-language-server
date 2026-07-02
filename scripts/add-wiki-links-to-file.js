/**
 * Add [Wiki](...) blocks to a definition file (single-pass, bottom-up splice).
 * Usage: node add-wiki-links-to-file.js --file __client_definitions.lua
 */
import { readFileSync, writeFileSync } from "node:fs";
import { join } from "node:path";
import { parseArgs } from "./lib/cli.js";
import { REPO_ROOT } from "./lib/paths.js";
import { loadWikiExceptions } from "./lib/definitions.js";
import { hasAltLink, hasWikiLink, wikiLinkMarkdown } from "./lib/wiki.js";

const options = parseArgs();
const filePath = join(REPO_ROOT, options.file ?? "__client_definitions.lua");
const exceptions = loadWikiExceptions();
const lines = readFileSync(filePath, "utf8").split(/\r?\n/);

const FUNCTION_RE = /^function (\w+)\(\) end$/;
const funcPositions = [];

for (let i = 0; i < lines.length; i++) {
  const match = lines[i].match(FUNCTION_RE);
  if (match) funcPositions.push({ index: i, name: match[1] });
}

let inserted = 0;

for (let fi = funcPositions.length - 1; fi >= 0; fi--) {
  const { index, name } = funcPositions[fi];
  const prevIndex = fi > 0 ? funcPositions[fi - 1].index : -1;
  const docStart = prevIndex + 1;
  const docLines = lines.slice(docStart, index);
  const docText = docLines.join("\n");

  if (exceptions[name]?.alt) continue;
  if (hasWikiLink(docText)) continue;
  if (exceptions[name] === undefined && hasAltLink(docText)) continue;

  const linkLine = wikiLinkMarkdown(name);

  let blockLine = -1;
  for (let j = index - 1; j >= docStart; j--) {
    if (lines[j].trim().startsWith("--[[")) {
      const blockStart = j;
      let blockEnd = j;
      for (let k = j; k < index; k++) {
        if (lines[k].includes("]]")) {
          blockEnd = k;
          break;
        }
      }
      const blockText = lines.slice(blockStart, blockEnd + 1).join("\n");
      if (blockText.includes("Credits to the community")) continue;
      blockLine = j;
      break;
    }
  }

  if (blockLine >= 0) {
    const blockHeader = lines[blockLine].trim();
    if (blockHeader.startsWith("--[[BUILD:")) {
      blockLine = -1;
    }
  }

  if (blockLine >= 0) {
    const nextLine = lines[blockLine + 1] ?? "";
    if (!nextLine.includes("[Wiki](")) {
      lines.splice(blockLine + 1, 0, linkLine);
      inserted++;
    }
    continue;
  }

  let typeLine = -1;
  for (let j = index - 1; j >= docStart; j--) {
    if (lines[j].trim().startsWith("---@type") || lines[j].trim().startsWith("---@deprecated")) {
      typeLine = j;
      break;
    }
  }

  const insertAt = typeLine >= 0 ? typeLine : index;
  lines.splice(insertAt, 0, "--[[", linkLine, "]]");
  inserted++;
}

writeFileSync(filePath, lines.join("\n") + "\n", "utf8");
console.log(`Updated ${options.file ?? "__client_definitions.lua"} with ${inserted} wiki link insertions.`);
