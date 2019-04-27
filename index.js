const fs = require("fs");
const { promisify } = require("util");

const mkdirAsync = promisify(fs.mkdir);
const writeFileAsync = promisify(fs.writeFile);

async function run() {
  try {
    await mkdirAsync("build");
    await writeFileAsync("build/bundle.js", String(new Date()));
  } catch (err) {
    return console.log(err);
  }

  console.log("The file was saved!");
}

run();
