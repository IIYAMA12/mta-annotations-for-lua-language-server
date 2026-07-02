const WIKI_BASE = "https://wiki.multitheftauto.com/wiki/";

export function toPascalCase(name) {
  if (!name) return name;
  return name.charAt(0).toUpperCase() + name.slice(1);
}

export function wikiUrl(functionName) {
  return `${WIKI_BASE}${toPascalCase(functionName)}`;
}

export function wikiLinkMarkdown(functionName) {
  return `[Wiki](${wikiUrl(functionName)})`;
}

const WIKI_LINK_RE = /\[Wiki\]\((https:\/\/wiki\.multitheftauto\.com\/wiki\/[^)]+)\)/;
const ANY_WIKI_RE = /https:\/\/wiki\.multitheftauto\.com\/wiki\/[^\s)"']+/;
const GITHUB_MTA_RE = /https:\/\/github\.com\/multitheftauto[^\s)"']*/;

export function extractWikiLinks(text) {
  const links = [];
  for (const match of text.matchAll(/\[Wiki\]\((https:\/\/wiki\.multitheftauto\.com\/wiki\/[^)]+)\)/g)) {
    links.push(match[1]);
  }
  return links;
}

export function hasWikiLink(text) {
  return WIKI_LINK_RE.test(text);
}

export function hasAltLink(text) {
  return ANY_WIKI_RE.test(text) || GITHUB_MTA_RE.test(text);
}

export function expectedWikiPath(functionName) {
  return `/wiki/${toPascalCase(functionName)}`;
}

export function isWrongCasing(link, functionName) {
  if (!link) return false;
  try {
    const url = new URL(link);
    return url.pathname !== expectedWikiPath(functionName);
  } catch {
    return true;
  }
}

export async function checkUrlExists(url, { timeoutMs = 15000 } = {}) {
  const controller = new AbortController();
  const timer = setTimeout(() => controller.abort(), timeoutMs);
  const headers = { "User-Agent": "mta-annotations-maint/1.0" };
  try {
    let response = await fetch(url, {
      method: "HEAD",
      redirect: "follow",
      signal: controller.signal,
      headers,
    });
    if (response.status === 405 || response.status === 403 || response.status === 429) {
      response = await fetch(url, {
        method: "GET",
        redirect: "follow",
        signal: controller.signal,
        headers,
      });
    }
    return response.ok;
  } catch {
    return false;
  } finally {
    clearTimeout(timer);
  }
}

export function delay(ms) {
  return new Promise((resolve) => setTimeout(resolve, ms));
}

export async function fetchWikiCategoryMembers(categoryTitle) {
  const params = new URLSearchParams({
    action: "query",
    list: "categorymembers",
    cmtitle: `Category:${categoryTitle}`,
    cmlimit: "500",
    format: "json",
  });
  const url = `${WIKI_BASE.replace("/wiki/", "/")}?${params}`;
  const apiUrl = `https://wiki.multitheftauto.com/w/api.php?${params}`;
  const response = await fetch(apiUrl);
  if (!response.ok) {
    throw new Error(`Wiki API failed for ${categoryTitle}: ${response.status}`);
  }
  const data = await response.json();
  const members = data?.query?.categorymembers ?? [];
  return members
    .map((m) => m.title)
    .filter((title) => title && !title.startsWith("Category:"))
    .map((title) => title.charAt(0).toLowerCase() + title.slice(1));
}
