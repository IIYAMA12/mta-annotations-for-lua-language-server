import { mkdirSync, writeFileSync } from "node:fs";
import { parseArgs, printHelp } from "./lib/cli.js";
import { loadWikiExceptions, scanDefinitions } from "./lib/definitions.js";
import { REPORTS_DIR } from "./lib/paths.js";
import {
  checkUrlExists,
  delay,
  expectedWikiPath,
  hasAltLink,
  hasWikiLink,
  isWrongCasing,
  wikiUrl,
} from "./lib/wiki.js";

const options = parseArgs();

if (options.help) {
  printHelp("check-wiki-links.js", "Audit wiki link coverage and URL validity.", [
    "node check-wiki-links.js",
    "node check-wiki-links.js --file __client_definitions.lua",
    "node check-wiki-links.js --skip-network",
    "node check-wiki-links.js --no-allow-alt-link",
  ]);
  process.exit(0);
}

const exceptions = loadWikiExceptions();
const functions = scanDefinitions({ fileFilter: options.file });

const report = {
  generatedAt: new Date().toISOString(),
  missing: [],
  broken: [],
  wrong_casing: [],
  duplicate: [],
  ok: [],
  excepted: [],
};

for (const fn of functions) {
  const exception = exceptions[fn.name];
  const expected = wikiUrl(fn.name);

  if (exception?.alt) {
    report.excepted.push({ ...fn, reason: exception.reason, alt: exception.alt });
    continue;
  }

  if (!fn.has_wiki_link) {
    if (options.allowAltLink && fn.has_alt_link) {
      report.excepted.push({ ...fn, reason: "alt-link-in-file" });
      continue;
    }
    report.missing.push({ ...fn, expected });
    continue;
  }

  const primaryLink =
    fn.wiki_links.find((link) => link.endsWith(expectedWikiPath(fn.name))) ??
    fn.wiki_links[fn.wiki_links.length - 1] ??
    expected;

  if (fn.wiki_links.length > 1) {
    report.duplicate.push({ ...fn, links: fn.wiki_links });
  }

  if (primaryLink && isWrongCasing(primaryLink, fn.name)) {
    report.wrong_casing.push({
      ...fn,
      expected,
      actual: primaryLink,
      expectedPath: expectedWikiPath(fn.name),
    });
  }

  if (!options.skipNetwork) {
    const ok = await checkUrlExists(primaryLink);
    if (!ok) {
      report.broken.push({ ...fn, url: primaryLink });
      await delay(150);
      continue;
    }
    await delay(150);
  }

  report.ok.push({ ...fn, url: primaryLink });
}

mkdirSync(REPORTS_DIR, { recursive: true });
writeFileSync(`${REPORTS_DIR}/wiki-audit.json`, JSON.stringify(report, null, 2));

console.log(`OK: ${report.ok.length}`);
console.log(`Excepted: ${report.excepted.length}`);
console.log(`Missing: ${report.missing.length}`);
console.log(`Wrong casing: ${report.wrong_casing.length}`);
console.log(`Broken: ${report.broken.length}`);
console.log(`Duplicate links: ${report.duplicate.length}`);
console.log(`Report: scripts/reports/wiki-audit.json`);

if (report.missing.length || report.broken.length || report.wrong_casing.length) {
  process.exit(1);
}
