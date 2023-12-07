// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library DecimalLibrary {
    
    // function to get decimal places of BTC/ETH price feed
    function getBTCperETH_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22).decimals();
    }

    // function to get decimal places of the ETH/USD price feed
    function getETHperUSD_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).decimals();
    }

    // function to get decimal places of BTC/USD price feed
    function getBTCperUSD_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43).decimals();
    }

    // function to get decimal places of the EUR/USD price feed
    function getEURperUSD_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910).decimals();
    }

    // function to get decimal places of GBP/USD price feed
    function getGBPperUSD_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0x91FAB41F5f3bE955963a986366edAcff1aaeaa83).decimals();
    }

    // function to get decimal places of USDC/USD price feed
    function getUSDCperUSD_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E).decimals();
    }

    //function to get decimal places of LINK/ETH price feed
    function getLINKperETH_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0x42585eD362B3f1BCa95c640FdFf35Ef899212734).decimals();
    }

    // function to get decimal places of LINK/USD price feed
    function getLINKperUSD_Decimal() public view returns(uint8) {
        return AggregatorV3Interface(0xc59E3633BAAC79493d908e63626716e204A45EdF).decimals();
    }

}
