import { readFileSync } from "node:fs";
import { basename, join } from "node:path";
import { normalizeLuaType } from "./lua-signature.js";

const ELEMENT_CPP_TYPES = new Map([
  ["CElement", "element"],
  ["CClientEntity", "element"],
  ["CPlayer", "player"],
  ["CClientPlayer", "player"],
  ["CVehicle", "vehicle"],
  ["CClientVehicle", "vehicle"],
  ["CPed", "ped"],
  ["CClientPed", "ped"],
  ["CObject", "object"],
  ["CClientObject", "object"],
  ["CMarker", "marker"],
  ["CColShape", "colshape"],
  ["CPickup", "pickup"],
  ["CBlip", "blip"],
  ["CRadarArea", "radararea"],
  ["CTeam", "team"],
  ["CWater", "water"],
  ["CProjectile", "projectile"],
  ["CWeapon", "weapon"],
  ["CLuaTimer", "timer"],
  ["CBan", "ban"],
  ["CResource", "resource"],
  ["CClientBrowser", "browser"],
  ["CLight", "light"],
  ["CSearchLight", "searchlight"],
  ["CEffect", "effect"],
  ["CSound", "sound"],
  ["CGUIElement", "gui-element"],
  ["CClientGUIElement", "gui-element"],
  ["CTrainTrack", "element"],
]);

const COMMENT_TYPE_MAP = new Map([
  ["string", "string"],
  ["int", "integer"],
  ["float", "number"],
  ["number", "number"],
  ["bool", "boolean"],
  ["boolean", "boolean"],
  ["function", "function"],
  ["table", "table"],
  ["userdata", "userdata"],
  ["var", "vararg"],
]);

function escapeRegex(text) {
  return text.replace(/[.*+?^${}()|[\]\\]/g, "\\$&");
}

function splitCppParams(paramsRaw) {
  const params = [];
  let depth = 0;
  let start = 0;
  for (let i = 0; i < paramsRaw.length; i++) {
    const ch = paramsRaw[i];
    if (ch === "<") depth++;
    else if (ch === ">") depth--;
    else if (ch === "," && depth === 0) {
      params.push(paramsRaw.slice(start, i).trim());
      start = i + 1;
    }
  }
  if (start <= paramsRaw.length) params.push(paramsRaw.slice(start).trim());
  return params.filter(Boolean);
}

function mapCppType(cppType) {
  let raw = cppType.replace(/\bconst\b/g, "").replace(/\b&/g, "").replace(/\bnoexcept\b/g, "").trim();
  let optional = false;

  const optMatch = raw.match(/^std::optional<(.+)>$/);
  if (optMatch) {
    optional = true;
    raw = optMatch[1].trim();
  }

  if (raw === "bool") return { type: "boolean", optional };
  if (raw === "int" || raw === "unsigned int" || raw === "std::uint8_t" || raw === "std::uint16_t") {
    return { type: "integer", optional };
  }
  if (raw === "float" || raw === "double") return { type: "number", optional };
  if (raw === "SString" || raw === "std::string") return { type: "string", optional };
  if (raw.endsWith("*")) {
    const base = raw.slice(0, -1).trim();
    if (ELEMENT_CPP_TYPES.has(base)) return { type: ELEMENT_CPP_TYPES.get(base), optional };
    if (base.startsWith("C") && base.length > 1) {
      const guess = base.slice(1).replace(/^Client/, "");
      return { type: guess.charAt(0).toLowerCase() + guess.slice(1), optional };
    }
  }
  if (/^[A-Z]\w+$/.test(raw)) {
    return { type: raw.charAt(0).toLowerCase() + raw.slice(1), optional };
  }
  return { type: raw.toLowerCase(), optional };
}

function mapCppReturn(cppReturn) {
  let raw = cppReturn.replace(/\bstatic\b/g, "").replace(/\bnoexcept\b/g, "").trim();
  if (raw === "void") return null;
  return mapCppType(raw).type;
}

function parseCppParamsList(paramsRaw) {
  return splitCppParams(paramsRaw)
    .filter((p) => !/\blua_State\s*\*/.test(p))
    .map((p) => {
      const trimmed = p.trim();
      const ptrMatch = trimmed.match(/^(.+?\*)\s*(\w+)?$/);
      if (ptrMatch) {
        const mapped = mapCppType(ptrMatch[1]);
        return { type: mapped.type, optional: mapped.optional, name: ptrMatch[2] ?? null };
      }
      const pieces = trimmed.split(/\s+/);
      if (pieces.length >= 2) {
        const cppType = pieces.slice(0, -1).join(" ");
        const mapped = mapCppType(cppType);
        return { type: mapped.type, optional: mapped.optional, name: pieces.at(-1) };
      }
      const mapped = mapCppType(trimmed);
      return { type: mapped.type, optional: mapped.optional, name: null };
    });
}

export function extractRegistrations(content) {
  const byName = new Map();

  function add(luaName, handler, kind) {
    if (!byName.has(luaName)) {
      byName.set(luaName, { luaName, handler, kind });
    }
  }

  for (const match of content.matchAll(/\{\s*"(\w+)"\s*,\s*ArgumentParser(?:Warn<[^>]*,\s*)?<([^>]+)>\s*\}/g)) {
    add(match[1], match[2].trim(), "argumentParser");
  }
  for (const match of content.matchAll(
    /AddFunction\s*\(\s*"(\w+)"\s*,\s*ArgumentParser(?:Warn<[^>]*,\s*)?<([^>]+)>\s*\)/g
  )) {
    add(match[1], match[2].trim(), "argumentParser");
  }
  for (const match of content.matchAll(/\{\s*"(\w+)"\s*,\s*([A-Za-z_][\w]*)\s*\}/g)) {
    if (match[2].startsWith("ArgumentParser")) continue;
    add(match[1], match[2], "legacy");
  }
  for (const match of content.matchAll(/CLuaCFunctions::AddFunction\s*\(\s*"(\w+)"\s*,\s*([A-Za-z_][\w]*)\s*\)/g)) {
    if (match[2].startsWith("ArgumentParser")) continue;
    if (!byName.has(match[1])) add(match[1], match[2], "legacy");
  }

  return [...byName.values()];
}

function parseCommentParamPart(part, optionalDefault = false) {
  let optional = optionalDefault;
  let cleaned = part.trim();
  if (cleaned.startsWith("[")) {
    optional = true;
    cleaned = cleaned.replace(/^\[+/, "").replace(/\]+$/, "").trim();
  }
  if (/=/.test(cleaned)) optional = true;
  cleaned = cleaned.replace(/=\s*[^,]+/g, "").replace(/\.\.\./g, "").trim();
  const tokens = cleaned.split(/\s+/).filter(Boolean);
  if (tokens.length >= 2) {
    const typeToken = tokens[0].replace(/^\[+/, "").toLowerCase();
    const type = COMMENT_TYPE_MAP.get(typeToken) ?? typeToken;
    return { type, optional, name: tokens.slice(1).join(" ") };
  }
  return null;
}

function parseCommentParamList(paramsSection) {
  const params = [];
  let i = 0;
  while (i < paramsSection.length) {
    while (i < paramsSection.length && /[\s,]/.test(paramsSection[i])) i++;
    if (i >= paramsSection.length) break;

    let optionalGroup = false;
    if (paramsSection[i] === "[") {
      optionalGroup = true;
      i++;
    }

    const start = i;
    let depth = 0;
    while (i < paramsSection.length) {
      const ch = paramsSection[i];
      if (ch === "[") depth++;
      else if (ch === "]") {
        if (depth === 0) {
          i++;
          break;
        }
        depth--;
      } else if (ch === "," && depth === 0) break;
      i++;
    }

    const part = paramsSection.slice(start, i).trim();
    const parsed = parseCommentParamPart(part, optionalGroup);
    if (parsed) params.push(parsed);
  }
  return params;
}

function findCommentSyntax(content, luaName) {
  const results = [];
  const re = new RegExp(`//\\s+(\\w+)\\s+${escapeRegex(luaName)}\\s*\\(([^\\n]*?)\\)`, "g");
  for (const match of content.matchAll(re)) {
    const paramsSection = match[2].trim();
    if (/var arguments/i.test(paramsSection)) {
      results.push({ kind: "comment", returnType: null, params: [], varargs: true, source: "comment" });
      continue;
    }

    const params = parseCommentParamList(paramsSection);
    const lead = match[1].toLowerCase();
    const returnType = ["string", "int", "float", "number", "bool", "boolean", "table", "function"].includes(lead)
      ? COMMENT_TYPE_MAP.get(lead) ?? lead
      : null;
    results.push({ kind: "comment", returnType, params, varargs: false, source: "comment" });
  }
  return results;
}

function findCppHandlerSignature(contents, handlerSymbol) {
  const simple = handlerSymbol.includes("::") ? handlerSymbol.split("::").pop() : handlerSymbol;
  const patterns = [
    new RegExp(`([\\w:<>,\\s*&]+?)\\s+[\\w:]+::${escapeRegex(simple)}\\s*\\(([^)]*)\\)`, "g"),
    new RegExp(`static\\s+([\\w:<>,\\s*&]+?)\\s+${escapeRegex(simple)}\\s*\\(([^)]*)\\)\\s*;`, "g"),
  ];

  for (const content of contents) {
    if (!content) continue;
    for (const pattern of patterns) {
      for (const match of content.matchAll(pattern)) {
        const params = parseCppParamsList(match[2]);
        if (!params.length && /\blua_State\s*\*/.test(match[2])) continue;
        return {
          kind: "cpp",
          returnType: mapCppReturn(match[1]),
          params,
          varargs: false,
          source: "cpp",
          handler: handlerSymbol,
        };
      }
    }
  }
  return null;
}

function isLegacyLuaHandler(contents, handlerSymbol) {
  const simple = handlerSymbol.includes("::") ? handlerSymbol.split("::").pop() : handlerSymbol;
  const re = new RegExp(`\\b[\\w:<>,\\s*&]+\\s+[\\w:]+::${escapeRegex(simple)}\\s*\\(\\s*lua_State\\*`);
  return contents.some((c) => c && re.test(c));
}

export function extractFunctionSyntax(cppPath, content, registration) {
  const headerPath = cppPath.replace(/\.cpp$/i, ".h");
  let headerContent = null;
  try {
    headerContent = readFileSync(headerPath, "utf8");
  } catch {
    // sibling .h may be absent
  }

  const contents = [content, headerContent];
  const { luaName, handler, kind } = registration;

  if (kind === "argumentParser") {
    const cppSig = findCppHandlerSignature(contents, handler);
    if (cppSig) return { ...cppSig, luaName, handler, extraction: "argumentParser" };
  }

  const cppSig = findCppHandlerSignature(contents, handler);
  if (cppSig) return { ...cppSig, luaName, handler, extraction: kind === "argumentParser" ? "argumentParser" : "cpp-fallback" };

  if (isLegacyLuaHandler(contents, handler) || kind === "legacy") {
    const comments = findCommentSyntax(content, luaName);
    if (comments.length === 1) {
      return { ...comments[0], luaName, handler, extraction: "comment" };
    }
    if (comments.length > 1) {
      return { ...comments[0], luaName, handler, extraction: "comment-overload", overloads: comments.length };
    }
  }

  return { luaName, handler, extraction: "none", returnType: null, params: [], varargs: false, source: null };
}

export function extractSyntaxFromCppFile(cppPath, content) {
  const registrations = extractRegistrations(content);
  const byLuaName = new Map();
  for (const reg of registrations) {
    byLuaName.set(reg.luaName, extractFunctionSyntax(cppPath, content, reg));
  }
  return byLuaName;
}

export function buildSyntaxIndex(scanResult, { onlyNames = null } = {}) {
  const nameFilter = onlyNames ? new Set(onlyNames) : null;
  const byName = new Map();

  for (const entry of Object.values(scanResult.bySourceFile)) {
    const cppPath = entry.absolutePath;
    const content = readFileSync(cppPath, "utf8");
    const registrations = extractRegistrations(content);
    for (const reg of registrations) {
      if (nameFilter && !nameFilter.has(reg.luaName)) continue;
      if (byName.has(reg.luaName)) continue;
      byName.set(reg.luaName, {
        ...extractFunctionSyntax(cppPath, content, reg),
        cppFile: entry.cppFile,
        relativePath: entry.relativePath,
      });
    }
  }
  return byName;
}

export function syntaxSummary(syntax) {
  if (!syntax || syntax.extraction === "none") return null;
  const params = (syntax.params ?? [])
    .map((p) => `${p.name ? `${p.name}` : "_"}${p.optional ? "?" : ""}: ${normalizeLuaType(p.type)}`)
    .join(", ");
  const ret = syntax.returnType ? `: ${syntax.returnType}` : "";
  return `fun(${params})${ret}`;
}
