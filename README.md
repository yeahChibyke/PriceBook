# PriceBook

**PriceBook is a comprehensive collection of smart contracts designed to provide price feeds for a diverse range of currency and asset pairings not available on Chainlink for the Sepolia Testnet. This repository is dedicated to offering accurate and real-world prices for popular assets and currencies based on Bitcoin (BTC), Ethereum (ETH), Euro (EUR), and United States Dollar (USD).  
*...more assets and currency pairings will be added***

---

## Smart Contracts:

-   **BTCPriceBook.sol**: This smart contract contains functions users can call to obtain real-world prices for a variety of popular assets and currencies based on Bitcoin (BTC).

-   **ETHPriceBook.sol**: Similar to BTCPriceBook.sol, this contract facilitates the retrieval of real-world prices for popular assets and currencies based on Ethereum (ETH).

-   **EURPriceBook.sol**: EURPriceBook.sol is designed to provide real-world prices for popular assets and currencies denominated in Euro (EUR).

-   **USDPriceLibrary.sol**: USDPriceLibrary stands out as a dedicated smart contract offering functions to acquire real-world prices for a diverse set of assets and currencies in terms of United States Dollar (USD).

-   **DecimalLibrary.sol**: This library contains functions that can be used to verify decimal places of the imported price feed contracts from [Chainlink](https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum&page=1#sepolia-testnet).

---

## How To Use

- ### Clone the Repository:
```shell
$ git clone https://github.com/yeahChibyke/PriceBook.git
cd PriceBook
```

- ### Install dependencies:
```shell
$ npm install
```

- ### Deploy Smart Contracts:

    - Utilize your preferred development environment to deploy the smart contracts based on your testing requirements.

- ### Interact with contracts:

    - Interact with the deployed contracts using the provided functions to retrieve real-world prices.

---

## Contribution Guidelines:

Contributions to enhance the functionality, add support for additional currency pairs, or improve the project are welcome. Feel free to open issues, submit pull requests, or reach out with your ideas.

Let's build a robust and reliable resource for decentralized price feeds on the Sepolia Testnet together! 🚀

---

### Price-Feed Contracts:

- ETH/USD: 0x694AA1769357215DE4FAC081bf1f309aDC325306 

- BTC/USD: 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43  

- EUR/USD: 0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910  

- GBP/USD: 0x91FAB41F5f3bE955963a986366edAcff1aaeaa83  

- USDC/USD: 0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E  

- LINK/ETH: 0x42585eD362B3f1BCa95c640FdFf35Ef899212734  

- LINK/USD: 0xc59E3633BAAC79493d908e63626716e204A45EdF  

- BTC/ETH: 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22

---

- Check [Chainlink](https://docs.chain.link/data-feeds/price-feeds/addresses?network=ethereum&page=1#sepolia-testnet) for updated pricefeed contracts.