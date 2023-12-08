// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

library USDPriceBook {
    
    // function to get price of ETH per USD
    function getETHperUSD_Price() internal view returns(uint256) {
        AggregatorV3Interface ETHperUSD_Price = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        ( , int256 answer, , , ) = ETHperUSD_Price.latestRoundData();
        // typecast answer from int256 to uint256
        // multiply by 1e10 to ensure precision
            // msg.value is in 1e18, and answer is in 1e8 (check getETHperUSD_Decimal in DecimalLibrary to confirm)
        return uint256(answer * 1e10);
    }

    // function to get price of BTC per USD
    function getBTCperUSD_Price() internal view returns(uint256) {
        AggregatorV3Interface BTCperUSD_Price = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
        ( , int256 answer, , , ) = BTCperUSD_Price.latestRoundData();
        // typecast answer from int256 to uint256
        // multiply by 1e10 to ensure precision
            // msg.value is in 1e18, and answer is in 1e8 (check getBTCperUSD_Decimal in DecimalLibrary to confirm)
        return uint256(answer * 1e10);
    }

    // fucntion to get price of EUR per USD
    function getEURperUSD_Price() internal view returns(uint256) {
        AggregatorV3Interface EURperUSD_Price = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
        ( , int256 answer, , , ) = EURperUSD_Price.latestRoundData();
        // typecast answer from int256 to uint256
        // multiply by 1e10 to ensure precision
            // msg.value is in 1e18, and answer is in 1e8 (check getEURperUSD_Decimal in DecimalLibrary to confirm)
        return uint256(answer * 1e10);
    }

    // function to get price of GBP per USD
    function getGBPperUSD_Price() internal view returns(uint256) {
        AggregatorV3Interface GBPperUSD_Price = AggregatorV3Interface(0x91FAB41F5f3bE955963a986366edAcff1aaeaa83);
        ( , int256 answer, , , ) = GBPperUSD_Price.latestRoundData();
        // typecast answer from int256 to uint256
        // multiply by 1e10 to ensure precision
            // msg.value is in 1e18, and answer is in 1e8 (check getGBPperUSD_Decimal in DecimalLibrary to confirm)
        return uint256(answer * 1e10);
    }

    // function to get price of LINK per USD
    function getLINKperUSD_Price() internal view returns(uint256) {
        AggregatorV3Interface LINKperUSD_Price = AggregatorV3Interface(0xc59E3633BAAC79493d908e63626716e204A45EdF);
        ( , int256 answer, , , ) = LINKperUSD_Price.latestRoundData();
        // typecast answer from int256 to uint256
        // multiply by 1e10 to ensure precision
            // msg.value is in 1e18, and answer is in 1e8 (check getLINKperUSD_Decimal in DecimalLibrary to confirm)
        return uint256(answer * 1e10);
    }

    // function to get price of USDC per USD
    function getUSDCperUSD_Price() internal view returns(uint256) {
        AggregatorV3Interface USDCperUSD_Price = AggregatorV3Interface(0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E);
        ( , int256 answer, , , ) = USDCperUSD_Price.latestRoundData();
        // typecast answer from int256 to uint256
        // multiply by 1e10 to ensure precision
            // msg.value is in 1e18, and answer is in 1e8 (check getUSDCperUSD_Decimal in DecimalLibrary to confirm)
        return uint256(answer * 1e10);
    }
}
