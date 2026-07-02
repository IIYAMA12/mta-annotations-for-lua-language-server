import { dirname, join, relative, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const __dirname = dirname(fileURLToPath(import.meta.url));

export const REPO_ROOT = resolve(__dirname, "../..");
export const SCRIPTS_DIR = join(REPO_ROOT, "scripts");
export const REPORTS_DIR = join(SCRIPTS_DIR, "reports");

export function rel(filePath) {
  return relative(REPO_ROOT, filePath).replace(/\\/g, "/");
}
