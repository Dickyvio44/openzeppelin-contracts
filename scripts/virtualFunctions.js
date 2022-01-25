const path = require('path');
const { findAll } = require('solidity-ast/utils');
const { _: artifacts } = require('yargs').argv;

for (const artifact of artifacts) {
  const { output: solcOutput } = require(path.resolve(__dirname, '..', artifact));

  for (const source in solcOutput.contracts) {
    if (source.includes('/mocks/')) continue;

    for (const contractDef of findAll('ContractDefinition', solcOutput.sources[source].ast)) {
      if (contractDef.contractKind != 'contract') continue;

      for (const functionDef of findAll('FunctionDefinition', contractDef)) {
        if (functionDef.virtual) continue;
        if (functionDef.kind != 'function') continue;
        if (functionDef.visibility == 'private') continue;

        console.log(`${contractDef.name}:${functionDef.name}`);

        process.exitCode = 1;
      }
    }
  }
}

if (!process.exitCode) {
  console.log('All functions are virtual.');
}
