import { readdirSync, readFileSync, statSync } from "node:fs";
import { join } from "node:path";
import { extractAnnotationFromContext } from "./lua-signature.js";
import { REPO_ROOT, rel } from "./paths.js";
import { extractWikiLinks, hasAltLink, hasWikiLink } from "./wiki.js";

const EXCLUDE_DIRS = new Set(["types", "scripts", "images", ".codegraph", ".git"]);

const DEFINITION_FILE_RE = /^__.*(?:definitions|defintions).*\.lua$/i;

export function inferSide(filePath) {
  const name = filePath.replace(/\\/g, "/").toLowerCase();
  if (name.includes("/addEventHandler/")) {
    if (name.includes("client")) return "client-events";
    if (name.includes("server")) return "server-events";
    return "shared-events";
  }
  if (name.includes("client")) return "client";
  if (name.includes("server")) return "server";
  if (name.includes("shared")) return "shared";
  if (name.includes("engine")) return "engine";
  if (name.includes("dx")) return "dx";
  if (name.includes("gui")) return "gui";
  return "unknown";
}

function walkDefinitionFiles(dir, results = []) {
  for (const entry of readdirSync(dir)) {
    const fullPath = join(dir, entry);
    if (EXCLUDE_DIRS.has(entry)) continue;
    const stat = statSync(fullPath);
    if (stat.isDirectory()) {
      walkDefinitionFiles(fullPath, results);
      continue;
    }
    if (!DEFINITION_FILE_RE.test(entry)) continue;
    results.push(fullPath);
  }
  return results.sort();
}

export function listDefinitionFiles() {
  return walkDefinitionFiles(REPO_ROOT);
}

function precedingContext(lines, functionLineIndex, lookback = 40) {
  const start = Math.max(0, functionLineIndex - lookback);
  return lines.slice(start, functionLineIndex).join("\n");
}

function annotationLineIndex(lines, functionLineIndex) {
  for (let i = functionLineIndex - 1; i >= 0; i--) {
    const line = lines[i].trim();
    if (line.startsWith("---@type")) return i;
    if (/^function \w+\(\) end$/.test(line)) break;
  }
  return functionLineIndex - 1;
}

function hasDescription(lines, functionLineIndex) {
  for (let i = functionLineIndex - 1; i >= 0; i--) {
    const line = lines[i];
    if (/^function \w+\(\) end$/.test(line.trim())) break;
    if (line.includes("---@type") && /\bReturns?\b/.test(line)) return true;
  }
  return false;
}

function isDeprecated(context) {
  return /@deprecated\b/.test(context);
}

function hasParamBlock(lines, functionLineIndex) {
  for (let i = functionLineIndex - 1; i >= 0; i--) {
    const trimmed = lines[i].trim();
    if (trimmed.startsWith("--[[")) return true;
    if (/^function \w+\(\) end$/.test(trimmed)) break;
  }
  return false;
}

export function parseDefinitionFile(filePath) {
  const content = readFileSync(filePath, "utf8");
  const lines = content.split(/\r?\n/);
  const functions = [];

  const funcLineIndexes = [];
  for (let i = 0; i < lines.length; i++) {
    const match = lines[i].match(/^function (\w+)\(\) end$/);
    if (match) funcLineIndexes.push({ index: i, name: match[1] });
  }

  for (let fi = 0; fi < funcLineIndexes.length; fi++) {
    const { index, name } = funcLineIndexes[fi];
    const prevIndex = fi > 0 ? funcLineIndexes[fi - 1].index : -1;
    const docStart = prevIndex + 1;
    const docLines = lines.slice(docStart, index);
    const context = docLines.join("\n");
    const wikiLinks = extractWikiLinks(context);
    const annotation = extractAnnotationFromContext(docLines);

    functions.push({
      name,
      file: rel(filePath),
      line: index + 1,
      side: inferSide(filePath),
      has_wiki_link: hasWikiLink(context),
      wiki_links: wikiLinks,
      has_alt_link: hasAltLink(context),
      has_description: hasDescription(lines, index),
      is_deprecated: isDeprecated(context),
      has_param_block: hasParamBlock(lines, index),
      annotation_line: annotationLineIndex(lines, index) + 1,
      annotation,
      has_type_annotation: annotation?.kind === "function",
    });
  }

  return functions;
}

export function scanDefinitions({ fileFilter = null } = {}) {
  let files = listDefinitionFiles();
  if (fileFilter) {
    files = files.filter((f) => f.endsWith(fileFilter) || rel(f) === fileFilter);
  }

  const all = [];
  for (const file of files) {
    all.push(...parseDefinitionFile(file));
  }
  return all.sort((a, b) => a.file.localeCompare(b.file) || a.line - b.line);
}

export function loadWikiExceptions() {
  try {
    const raw = readFileSync(join(REPO_ROOT, "scripts/wiki-exceptions.json"), "utf8");
    return JSON.parse(raw);
  } catch {
    return {};
  }
}

export function groupByFile(functions) {
  const grouped = new Map();
  for (const fn of functions) {
    if (!grouped.has(fn.file)) grouped.set(fn.file, []);
    grouped.get(fn.file).push(fn);
  }
  return grouped;
}

export function inventoryToMarkdown(functions) {
  const grouped = groupByFile(functions);
  const sideCounts = {};
  for (const fn of functions) {
    sideCounts[fn.side] = (sideCounts[fn.side] ?? 0) + 1;
  }

  const lines = ["# Definition inventory", "", `Total functions: **${functions.length}**`, ""];
  lines.push("## By side", "");
  for (const [side, count] of Object.entries(sideCounts).sort()) {
    lines.push(`- ${side}: ${count}`);
  }
  lines.push("");

  for (const [file, fns] of [...grouped.entries()].sort()) {
    lines.push(`## ${file}`, "");
    for (const fn of fns) {
      const flags = [
        fn.has_wiki_link ? "wiki" : "no-wiki",
        fn.has_description ? "desc" : "no-desc",
        fn.is_deprecated ? "deprecated" : null,
      ]
        .filter(Boolean)
        .join(", ");
      lines.push(`- \`${fn.name}\` (L${fn.line}) — ${flags}`);
    }
    lines.push("");
  }

  return lines.join("\n");
}
