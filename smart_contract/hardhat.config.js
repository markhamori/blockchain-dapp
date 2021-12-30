require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/joWBz9c9K5XbFkUe-D7YC82fQmb0owwX",
      accounts: [
        "6ca181699a7ae66260d7b4b436519493949e0405a437b1617a94318fab82431e",
      ],
    },
  },
};
