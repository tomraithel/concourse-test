const fs = require("fs");
fs.writeFile("build/bundle.ts", String(new Date()), function(err) {
  if (err) {
    return console.log(err);
  }

  console.log("The file was saved!");
});
