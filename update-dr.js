import fs from "fs";

// Change this to your apache path
const apachePath = process.argv[5];

// Get the current working directory from the command line
const cwd = process.argv[4];
let newDocumentRoot = `DocumentRoot "${cwd}"
<Directory "${cwd}">`;

let oldConf = fs.readFileSync(apachePath + "/conf/httpd.conf").toString();
let newConf = oldConf.replace(/DocumentRoot\s".+?"\s+<Directory\s".+?">/, newDocumentRoot);

fs.writeFileSync(apachePath + "/conf/httpd.conf", newConf);