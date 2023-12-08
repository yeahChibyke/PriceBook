# PriceBook

**PriceBook is a comprehensive collection of smart contracts designed to provide price feeds for a diverse range of currency and asset pairings not available on Chainlink for the Sepolia Testnet. This repository is dedicated to offering accurate and real-world prices for popular assets and currencies based on Bitcoin (BTC), Ethereum (ETH), Euro (EUR), and United States Dollar (USD).**

Foundry consists of:

-   **Forge**: Ethereum testing framework (like Truffle, Hardhat and DappTools).
-   **Cast**: Swiss army knife for interacting with EVM smart contracts, sending transactions and getting chain data.
-   **Anvil**: Local Ethereum node, akin to Ganache, Hardhat Network.
-   **Chisel**: Fast, utilitarian, and verbose solidity REPL.

## Documentation

https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```


ETH/USD: 0x694AA1769357215DE4FAC081bf1f309aDC325306  
BTC/USD: 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43  
EUR/USD: 0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910  
GBP/USD: 0x91FAB41F5f3bE955963a986366edAcff1aaeaa83  
USDC/USD: 0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E  
LINK/ETH: 0x42585eD362B3f1BCa95c640FdFf35Ef899212734  
LINK/USD: 0xc59E3633BAAC79493d908e63626716e204A45EdF  
BTC/ETH: 0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22
