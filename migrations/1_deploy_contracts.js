var EtherLock = artifacts.require('./EtherLock.sol')
var Vault = artifacts.require('./Vault.sol')

module.exports = function(deployer) {
  deployer.deploy(EtherLock);
  deployer.deploy(Vault);
};
