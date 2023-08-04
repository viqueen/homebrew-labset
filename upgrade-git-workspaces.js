const {downloadLatestArtifact, getPackageInfo, runChecksum, updateFormula} = require("./upgrade");

getPackageInfo('@labset', 'git-workspaces')
    .then(downloadLatestArtifact)
    .then(runChecksum)
    .then(updateFormula);