const HDWalletProvider = require("truffle-hdwallet-provider");

module.exports = {
  networks: {
    development: {
      host: "localhost",
      port: 7545,
      gas: 4600000,
      network_id: "*" // Match any network id
    },
    ropsten: {
      provider: function() {
        return new HDWalletProvider(
          mnemonic,
          "https://ropsten.infura.io/v3/19d25fd154f444a797fa3773c14f8326"
        );
      },
      network_id: "*",
      gas: 4000000
    }
  }
};
