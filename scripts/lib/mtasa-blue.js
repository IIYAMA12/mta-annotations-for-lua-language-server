import { existsSync, readdirSync, readFileSync, statSync } from "node:fs";
import { basename, join, relative, resolve } from "node:path";

/** Only these trees register Lua C functions — not all of Server/ or Client/. */
export const LUADEFS_REL = {
  client: "Client/mods/deathmatch/logic/luadefs",
  server: "Server/mods/deathmatch/logic/luadefs",
};

const CLIENT_ONLY_CPP = new Set([
  "CLuaAudioDefs",
  "CLuaBrowserDefs",
  "CLuaClientDefs",
  "CLuaDiscordDefs",
  "CLuaDrawingDefs",
  "CLuaEffectDefs",
  "CLuaEngineDefs",
  "CLuaFireDefs",
  "CLuaGUIDefs",
  "CLuaPointLightDefs",
  "CLuaPostfxDefs",
  "CLuaProjectileDefs",
  "CLuaSearchLightDefs",
  "CLuaTaskDefs",
  "CLuaVectorGraphicDefs",
  "CLuaWeaponDefs",
]);

const SERVER_ONLY_CPP = new Set([
  "CLuaACLDefs",
  "CLuaAccountDefs",
  "CLuaBanDefs",
  "CLuaDatabaseDefs",
  "CLuaHTTPDefs",
  "CLuaHandlingDefs",
  "CLuaTextDefs",
  "CLuaVoiceDefs",
]);

const CPP_ANNOTATION_OVERRIDE = {
  CLuaDrawingDefs: "__dx_definitions.lua",
  CLuaEngineDefs: "__engine_definitions.lua",
  CLuaGUIDefs: "__gui_definitions.lua",
};

function cppStem(filename) {
  return filename.replace(/\.cpp$/i, "");
}

function isLikelyCommentedLine(content, index) {
  const lineStart = content.lastIndexOf("\n", index - 1) + 1;
  const line = content.slice(lineStart, content.indexOf("\n", index));
  return /^\s*\/\//.test(line);
}

/**
 * Extract Lua function names registered from a luadefs .cpp file.
 * Supports modern constexpr tables and CLuaCFunctions::AddFunction calls.
 */
export function extractLuaFunctionsFromCpp(content, { includeCommented = false } = {}) {
  const names = new Map();

  function add(name, index, commented = false) {
    if (!name || !/^[a-zA-Z_]\w*$/.test(name)) return;
    if (!includeCommented && commented) return;
    if (!names.has(name)) {
      names.set(name, { commented });
    }
  }

  const pairRe = /\{\s*"(\w+)"\s*,/g;
  for (const match of content.matchAll(pairRe)) {
    add(match[1], match.index, isLikelyCommentedLine(content, match.index));
  }

  const addFnRe = /CLuaCFunctions::AddFunction\s*\(\s*"(\w+)"/g;
  for (const match of content.matchAll(addFnRe)) {
    add(match[1], match.index, isLikelyCommentedLine(content, match.index));
  }

  const legacyRe = /\.addFunction\s*\(\s*"(\w+)"/g;
  for (const match of content.matchAll(legacyRe)) {
    add(match[1], match.index, isLikelyCommentedLine(content, match.index));
  }

  return [...names.keys()].sort();
}

/**
 * Resolve and validate an mtasa-blue checkout root (not Server/ or Client/ alone).
 */
export function resolveMtasaBlueRoot(inputPath) {
  const root = resolve(inputPath);
  const clientLuadefs = join(root, LUADEFS_REL.client);
  const serverLuadefs = join(root, LUADEFS_REL.server);

  const serverOnlyLuadefs = join(root, "mods/deathmatch/logic/luadefs");
  if (
    basename(root).toLowerCase() === "server" &&
    existsSync(serverOnlyLuadefs) &&
    !existsSync(clientLuadefs)
  ) {
    throw new Error(
      `Path looks like mtasa-blue/Server — pass the repo root (parent of Server/ and Client/), not ${root}`
    );
  }

  const clientOnlyLuadefs = join(root, "mods/deathmatch/logic/luadefs");
  if (
    basename(root).toLowerCase() === "client" &&
    existsSync(clientOnlyLuadefs) &&
    !existsSync(serverLuadefs)
  ) {
    throw new Error(
      `Path looks like mtasa-blue/Client — pass the repo root (parent of Server/ and Client/), not ${root}`
    );
  }

  if (!existsSync(clientLuadefs) && !existsSync(serverLuadefs)) {
    throw new Error(
      `Not an mtasa-blue checkout: expected ${LUADEFS_REL.client} and/or ${LUADEFS_REL.server} under ${root}`
    );
  }

  return { root, clientLuadefs, serverLuadefs };
}

function listCppFiles(luadefsDir) {
  if (!existsSync(luadefsDir)) return [];
  return readdirSync(luadefsDir)
    .filter((name) => name.endsWith(".cpp") && statSync(join(luadefsDir, name)).isFile())
    .sort();
}

/**
 * Suggest annotation file(s) for a function based on runtime side(s) and source module.
 */
export function suggestAnnotationFiles({ runtimes, cppFile }) {
  const stem = cppStem(cppFile);
  const client = runtimes.includes("client");
  const server = runtimes.includes("server");

  if (CPP_ANNOTATION_OVERRIDE[stem]) {
    return [CPP_ANNOTATION_OVERRIDE[stem]];
  }

  if (CLIENT_ONLY_CPP.has(stem)) {
    return ["__client_definitions.lua"];
  }

  if (SERVER_ONLY_CPP.has(stem) || stem.startsWith("CLuaFunctionDefs")) {
    return ["__server_definitions.lua"];
  }

  if (stem === "CLuaPedDefs") {
    if (client && server) return ["__shared_ped_definitions.lua"];
    if (client) return ["__client_ped_definitions.lua", "__shared_ped_definitions.lua"];
    return ["__shared_ped_definitions.lua"];
  }

  if (stem === "CLuaVehicleDefs") {
    if (client && server) return ["__shared_vehicle_defintions.lua"];
    if (client) return ["__client_vehicle_definitions.lua", "__shared_vehicle_defintions.lua"];
    return ["__shared_vehicle_defintions.lua"];
  }

  if (client && server) return ["__shared_definitions.lua"];
  if (server) return ["__server_definitions.lua"];
  return ["__client_definitions.lua"];
}

function suggestAnnotationFilesForEntry(entry) {
  const files = new Set();
  for (const src of entry.sources) {
    for (const file of suggestAnnotationFiles({
      runtimes: entry.runtimes,
      cppFile: src.cppFile,
    })) {
      files.add(file);
    }
  }
  return [...files].sort();
}

/**
 * Scan mtasa-blue luadefs directories and return function registry.
 */
export function scanMtasaBlue(mtasaBlueRoot, { sides = ["client", "server"], includeCommented = false } = {}) {
  const { root, clientLuadefs, serverLuadefs } = resolveMtasaBlueRoot(mtasaBlueRoot);

  const byName = new Map();
  const bySourceFile = new Map();

  function ingest(runtime, luadefsDir) {
    for (const cppFile of listCppFiles(luadefsDir)) {
      const absPath = join(luadefsDir, cppFile);
      const content = readFileSync(absPath, "utf8");
      const functions = extractLuaFunctionsFromCpp(content, { includeCommented });

      const sourceEntry = {
        runtime,
        cppFile,
        absolutePath: absPath,
        relativePath: relative(root, absPath).replace(/\\/g, "/"),
        functions,
      };
      bySourceFile.set(`${runtime}:${cppFile}`, sourceEntry);

      for (const name of functions) {
        if (!byName.has(name)) {
          byName.set(name, {
            name,
            runtimes: new Set(),
            sources: [],
            suggestedFiles: [],
          });
        }
        const entry = byName.get(name);
        entry.runtimes.add(runtime);
        entry.sources.push({
          runtime,
          cppFile,
          relativePath: sourceEntry.relativePath,
        });
      }
    }
  }

  if (sides.includes("client")) ingest("client", clientLuadefs);
  if (sides.includes("server")) ingest("server", serverLuadefs);

  const functions = [];
  for (const entry of byName.values()) {
    const runtimes = [...entry.runtimes].sort();
    const suggestedFiles = suggestAnnotationFilesForEntry({ runtimes, sources: entry.sources });
    functions.push({
      name: entry.name,
      runtimes,
      sources: entry.sources,
      suggestedFiles,
      primaryFile: suggestedFiles[0],
    });
  }

  functions.sort((a, b) => a.name.localeCompare(b.name));

  return {
    root,
    scannedPaths: {
      client: sides.includes("client") ? clientLuadefs : null,
      server: sides.includes("server") ? serverLuadefs : null,
    },
    sourceFileCount: bySourceFile.size,
    functionCount: functions.length,
    functions,
    bySourceFile: Object.fromEntries(bySourceFile),
  };
}

export function groupFunctionsByAnnotationFile(scanResult) {
  const grouped = new Map();
  for (const fn of scanResult.functions) {
    const file = fn.primaryFile;
    if (!grouped.has(file)) grouped.set(file, []);
    grouped.get(file).push(fn);
  }
  return Object.fromEntries([...grouped.entries()].sort(([a], [b]) => a.localeCompare(b)));
}

export function compareWithRepo(scanResult, repoInventory) {
  const repoByName = new Map();
  for (const fn of repoInventory) {
    if (!repoByName.has(fn.name)) repoByName.set(fn.name, []);
    repoByName.get(fn.name).push(fn);
  }

  const missingInRepo = [];
  const wrongFile = [];
  const ok = [];

  for (const fn of scanResult.functions) {
    const defs = repoByName.get(fn.name);
    if (!defs) {
      missingInRepo.push(fn);
      continue;
    }

    const repoFiles = new Set(defs.map((d) => d.file));
    const matchesSuggested = fn.suggestedFiles.some((f) => repoFiles.has(f));
    if (matchesSuggested) {
      ok.push({ ...fn, repoFiles: [...repoFiles] });
    } else {
      wrongFile.push({ ...fn, repoFiles: [...repoFiles], suggestedFiles: fn.suggestedFiles });
    }
  }

  const mtasaNames = new Set(scanResult.functions.map((f) => f.name));
  const extraInRepo = repoInventory.filter((fn) => !mtasaNames.has(fn.name));

  return { missingInRepo, wrongFile, ok, extraInRepo };
}
