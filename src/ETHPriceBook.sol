// SPDX-License-Identifier: MIT
pragma solidity ^ 0.8.0;

import {USDPriceBook} from "./USDPriceBook.sol";

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract ETHPriceBook is USDPriceBook {

    // using USDPriceBook for uint256;

    // function to get price of BTC per ETH
    // function getBTCperETH_Price() public view returns(uint256) {
    //     uint256 BTCperUSD_Price = getBTCperUSD_Price();
    //     uint256 ETHperUSD_Price = getETHperUSD_Price();
    //     uint256 BTCperETH_Price = (BTCperUSD_Price * 1e18) / ETHperUSD_Price;
    //     return BTCperETH_Price;
    // }
    
    function getBTCperETH_Price() public view returns(uint256) {
        AggregatorV3Interface BTCperETH_Price = AggregatorV3Interface(0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22);
        ( , int256 answer, , , ) = BTCperETH_Price.latestRoundData();
        // typecast answer to uint256
        return uint256(answer);
    }

    // function to get price of EUR per ETH
    function getEURperETH_Price() public view returns(uint256) {
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 ETHperUSD_Price = getETHperUSD_Price();
        uint256 EURperETH_Price = (EURperUSD_Price * 1e18) / ETHperUSD_Price;
        return EURperETH_Price; 
    }

    // function to get price of GBP per ETH
    function getGBPperETH_Price() public view returns(uint256) {
        uint256 GBPperUSD_Price = getGBPperUSD_Price();
        uint256 ETHperUSD_Price = getETHperUSD_Price();
        uint256 GBPperETH_Price = (GBPperUSD_Price * 1e18) / ETHperUSD_Price;
        return GBPperETH_Price;
    }

    // function to get price of LINK per ETH 
    function getLINKperETH_Price() public view returns(uint256) {
        AggregatorV3Interface LINKperETH_Price = AggregatorV3Interface(0x42585eD362B3f1BCa95c640FdFf35Ef899212734);
        ( , int256 answer, , , ) = LINKperETH_Price.latestRoundData();
        // typecast answer to uint256
        return uint256(answer);
    }

    // function to get price of USDC per ETH
    function getUSDCperETH_Price() public view returns(uint256) {
        uint256 USDCperUSD_Price = getUSDCperUSD_Price();
        uint256 ETHperUSD_Price = getETHperUSD_Price();
        uint256 USDCperETH_Price = (USDCperUSD_Price * 1e18) / ETHperUSD_Price;
        return USDCperETH_Price;
    }

    // function to get price of USD per ETH
    function getUSDperETH_Price() public view returns(uint256) {
        uint256 ETHperUSD_Price = getETHperUSD_Price();
        uint256 USDperUSD_Price = 1e18;
        uint256 USDperETH_Price = (USDperUSD_Price * 1e18) / ETHperUSD_Price;
        return USDperETH_Price;
    }

}
