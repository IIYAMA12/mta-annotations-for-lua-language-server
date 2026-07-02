export function parseArgs(argv = process.argv.slice(2)) {
  const options = {
    file: null,
    format: "json",
    skipNetwork: false,
    allowAltLink: true,
    side: null,
    mtasaBlue: null,
    name: null,
    source: null,
    compare: false,
    help: false,
  };

  for (let i = 0; i < argv.length; i++) {
    const arg = argv[i];
    if (arg === "--help" || arg === "-h") {
      options.help = true;
    } else if (arg === "--file") {
      options.file = argv[++i];
    } else if (arg === "--format") {
      options.format = argv[++i];
    } else if (arg === "--skip-network") {
      options.skipNetwork = true;
    } else if (arg === "--allow-alt-link") {
      options.allowAltLink = true;
    } else if (arg === "--no-allow-alt-link") {
      options.allowAltLink = false;
    } else if (arg === "--side") {
      options.side = argv[++i];
    } else if (arg === "--mtasa-blue") {
      options.mtasaBlue = argv[++i];
    } else if (arg === "--name") {
      options.name = argv[++i];
    } else if (arg === "--source") {
      options.source = argv[++i];
    } else if (arg === "--compare") {
      options.compare = true;
    }
  }

  return options;
}

export function printHelp(scriptName, description, usageLines) {
  console.log(`${scriptName}\n${description}\n`);
  for (const line of usageLines) {
    console.log(`  ${line}`);
  }
}
