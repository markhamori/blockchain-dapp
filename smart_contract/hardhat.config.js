require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/joWBz9c9K5XbFkUe-D7YC82fQmb0owwX",
      accounts: [
        process.env.PRIVATE_KEY,
      ],
    },
  },
};
