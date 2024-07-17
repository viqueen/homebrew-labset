const {downloadLatestArtifact, getPackageInfo, runChecksum, updateFormula} = require("./upgrade");

getPackageInfo('@labset', 'protoc-gen-graphql')
    .then(downloadLatestArtifact)
    .then(runChecksum)
    .then(updateFormula);