/**
 * Parse and compare Lua Language Server function signatures from ---@type lines.
 */

function splitTopLevel(input, sep = ",") {
  const parts = [];
  let depth = 0;
  let start = 0;
  for (let i = 0; i < input.length; i++) {
    const ch = input[i];
    if (ch === "(" || ch === "{" || ch === "[") depth++;
    else if (ch === ")" || ch === "}" || ch === "]") depth--;
    else if (ch === sep && depth === 0) {
      parts.push(input.slice(start, i).trim());
      start = i + 1;
    }
  }
  if (start <= input.length) parts.push(input.slice(start).trim());
  return parts.filter(Boolean);
}

export function parseAnnotationTypeLine(line) {
  const match = line.match(/---@type\s+(.+)/);
  if (!match) return null;

  let spec = match[1].trim();
  spec = spec.replace(/\s+Returns\b[\s\S]*$/, "").trim();

  if (!spec.startsWith("fun(")) {
    return { kind: "other", raw: spec, params: [], returnType: null };
  }

  const closeIndex = findMatchingParen(spec, spec.indexOf("("));
  if (closeIndex < 0) return null;

  const paramsRaw = spec.slice(spec.indexOf("(") + 1, closeIndex);
  const after = spec.slice(closeIndex + 1).trim();
  let returnType = null;
  if (after.startsWith(":")) {
    returnType = after.slice(1).trim();
  }

  const params = [];
  for (const part of splitTopLevel(paramsRaw)) {
    const optional = part.includes("?");
    const cleaned = part.replace(/\?/g, "").trim();
    const colon = cleaned.indexOf(":");
    if (colon >= 0) {
      params.push({
        name: cleaned.slice(0, colon).trim(),
        type: cleaned.slice(colon + 1).trim(),
        optional,
      });
    } else if (cleaned) {
      params.push({ name: null, type: cleaned, optional });
    }
  }

  return { kind: "function", raw: spec, params, returnType };
}

function findMatchingParen(text, openIndex) {
  let depth = 0;
  for (let i = openIndex; i < text.length; i++) {
    if (text[i] === "(") depth++;
    else if (text[i] === ")") {
      depth--;
      if (depth === 0) return i;
    }
  }
  return -1;
}

export function extractAnnotationFromContext(docLines) {
  for (let i = docLines.length - 1; i >= 0; i--) {
    const line = docLines[i].trim();
    if (line.startsWith("---@type")) {
      return parseAnnotationTypeLine(line);
    }
  }
  return null;
}

const TYPE_ALIASES = new Map([
  ["bool", "boolean"],
  ["int", "integer"],
  ["float", "number"],
  ["double", "number"],
  ["string", "string"],
  ["true", "boolean"],
  ["false", "boolean"],
  ["nil", "nil"],
  ["function", "function"],
  ["table", "table"],
  ["userdata", "userdata"],
  ["var", "vararg"],
]);

export function normalizeLuaType(type) {
  if (!type) return "";
  let t = type.trim();
  t = t.replace(/\s+/g, " ");
  const lower = t.toLowerCase();
  if (TYPE_ALIASES.has(lower)) return TYPE_ALIASES.get(lower);

  // Strip named return prefixes like `waveData:{...}`
  const named = t.match(/^(\w+)\s*:\s*(.+)$/);
  if (named && !["fun"].includes(named[1])) {
    return normalizeLuaType(named[2]);
  }

  return lower;
}

function baseReturnType(type) {
  const norm = normalizeLuaType(type);
  return norm.split("|")[0].trim();
}

function typesCompatible(sourceType, annotationType) {
  const src = normalizeLuaType(sourceType);
  const ann = normalizeLuaType(annotationType);

  if (src === ann) return true;
  if (src === "number" && ann === "integer") return true;
  if (src === "integer" && ann === "number") return true;
  if (src === "boolean" && ann === "true") return true;
  if (src === "string" && !["integer", "number", "boolean", "table", "function", "nil"].includes(ann)) {
    return true;
  }
  if (src === "element" && ["player", "vehicle", "ped", "object", "marker", "colshape", "pickup", "blip", "radararea", "team", "water", "projectile", "weapon", "timer", "ban", "resource", "browser", "light", "searchlight", "effect", "sound", "camera", "gui-element"].includes(ann)) {
    return true;
  }
  if (ann.includes("|") && ann.split("|").some((part) => typesCompatible(sourceType, part.trim()))) {
    return true;
  }
  return false;
}

function returnTypesCompatible(sourceType, annotationType) {
  if (!sourceType || !annotationType) return true;
  const src = baseReturnType(sourceType);
  const ann = baseReturnType(annotationType);
  if (typesCompatible(src, ann)) return true;
  if (normalizeLuaType(annotationType).includes("|")) {
    const parts = annotationType.split("|").map((p) => p.trim());
    return parts.some((part) => typesCompatible(sourceType, part));
  }
  return false;
}

export function formatSignature(sig) {
  if (!sig?.params) return "";
  const params = sig.params
    .map((p) => {
      const name = p.name ?? "_";
      const opt = p.optional ? "?" : "";
      return `${name}${opt}: ${p.type}`;
    })
    .join(", ");
  const ret = sig.returnType ? `: ${sig.returnType}` : "";
  return `fun(${params})${ret}`;
}

export function compareSignatures(sourceSig, annotationSig) {
  if (!annotationSig || annotationSig.kind === "other") {
    return { status: "missing_annotation", issues: ["no ---@type fun(...) annotation"] };
  }
  if (!sourceSig) {
    return { status: "unverifiable", issues: ["no extractable mtasa-blue signature"] };
  }
  if (sourceSig.varargs) {
    return { status: "unverifiable", issues: ["varargs function — manual review"] };
  }

  const issues = [];
  const srcParams = sourceSig.params ?? [];
  const annParams = annotationSig.params ?? [];

  const srcRequired = srcParams.filter((p) => !p.optional).length;
  const annRequired = annParams.filter((p) => !p.optional).length;
  if (srcRequired !== annRequired) {
    issues.push(`required params: source ${srcRequired}, annotation ${annRequired}`);
  }

  const compareLen = Math.max(srcParams.length, annParams.length);
  for (let i = 0; i < compareLen; i++) {
    const src = srcParams[i];
    const ann = annParams[i];
    if (!src && ann && !ann.optional) {
      issues.push(`param ${i + 1}: extra required param in annotation (${ann.type})`);
      continue;
    }
    if (src && !ann) {
      if (!src.optional) issues.push(`param ${i + 1}: missing in annotation (${src.type})`);
      continue;
    }
    if (src && ann && !typesCompatible(src.type, ann.type)) {
      issues.push(`param ${i + 1}: source ${src.type}, annotation ${ann.type}`);
    }
  }

  if (sourceSig.returnType && annotationSig.returnType) {
    if (!returnTypesCompatible(sourceSig.returnType, annotationSig.returnType)) {
      issues.push(`return: source ${sourceSig.returnType}, annotation ${annotationSig.returnType}`);
    }
  }

  return issues.length
    ? { status: "mismatch", issues, source: formatSignature(sourceSig), annotation: formatSignature(annotationSig) }
    : { status: "ok", source: formatSignature(sourceSig), annotation: formatSignature(annotationSig) };
}
