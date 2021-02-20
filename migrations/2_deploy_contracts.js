const CryptoVouch = artifacts.require("./cryptovouch/CryptoVouch.sol");

module.exports = function(deployer) {
  deployer.deploy(CryptoVouch, {gas: 6721975});
};
