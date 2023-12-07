// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {USDPriceBook} from "./USDPriceBook.sol";

contract BTCPriceBook is USDPriceBook {

    // function to get price of ETH per BTC
    function getETHperBTC_Price() public view returns(uint256) {
        uint256 ETHperUSD_Price = getETHperUSD_Price();
        uint256 BTCperUSD_Price = getBTCperUSD_Price();
        uint256 ETHperBTC_Price = (ETHperUSD_Price * 1e18) / BTCperUSD_Price;
        return ETHperBTC_Price;
    }

    // function to get price of EUR per BTC
    function getEURperBTC_Price() public view returns(uint256) {
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 BTCperUSD_Price = getBTCperUSD_Price();
        uint256 EURperBTC_Price = (EURperUSD_Price * 1e18) / BTCperUSD_Price;
        return EURperBTC_Price;
    }

    // function to get price of GBP per BTC
    function getGBPperBTC_Price() public view returns(uint256) {
        uint256 GBPperUSD_Price = getGBPperUSD_Price();
        uint256 BTCperUSD_Price = getBTCperUSD_Price();
        uint256 GBPperBTC_Price = (GBPperUSD_Price * 1e18) / BTCperUSD_Price;
        return GBPperBTC_Price;
    }

    // function to get price of LINK per BTC
    function getLINKperBTC_Price() public view returns(uint256) {
        uint256 LINKperUSD_Price = getLINKperUSD_Price();
        uint256 BTCperUSD_Price = getBTCperUSD_Price();
        uint256 LINKperBTC_Price = (LINKperUSD_Price * 1e18) / BTCperUSD_Price;
        return LINKperBTC_Price;
    }

    // function to get price of USDC per BTC
    function getUSDCperBTC_Price() public view returns(uint256) {
        uint256 USDCperUSD_Price = getUSDCperUSD_Price();
        uint256 BTCperUSD_Price = getBTCperUSD_Price();
        uint256 USDCperBTC_Price = (USDCperUSD_Price * 1e18) / BTCperUSD_Price;
        return USDCperBTC_Price;
    }

    // function to get price of USD per BTC
    function getUSDperBTC_Price() public view returns(uint256) {
        uint256 USDperUSD_Price = 1e18;
        uint256 BTCperUSD_Price = getBTCperUSD_Price();
        uint256 USDperBTC_Price = (USDperUSD_Price * 1e18) / BTCperUSD_Price;
        return USDperBTC_Price;
    }

}
