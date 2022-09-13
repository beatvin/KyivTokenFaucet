var KyivTokenFaucet = artifacts.require("KyivTokenFaucet");

module.exports = function(deployer) {

  deployer.deploy(KyivTokenFaucet);
  
};