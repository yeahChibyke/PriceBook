// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {USDPriceBook} from "./USDPriceBook.sol";

contract EURPriceBook is USDPriceBook {

    // function to get price of ETH per EUR
    function getETHperEUR_Price() public view returns(uint256) {
        uint256 ETHperUSD_Price = getETHperUSD_Price();
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 ETHperEUR_Price = (ETHperUSD_Price * 1e18) / EURperUSD_Price ;
        return ETHperEUR_Price;
    }

    // function get price of BTC in EUR
    function getBTCperEUR_Price() public view returns(uint256) {
        uint256 BTCperUSD_Price = getBTCperUSD_Price();
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 BTCperEUR_Price = (BTCperUSD_Price * 1e18) / EURperUSD_Price;
        return BTCperEUR_Price;
    }

    // function to get price of GBP in EUR
    function getGBPperEUR_Price() public view returns(uint256) {
        uint256 GBPperUSD_Price = getGBPperUSD_Price();
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 GBPperEUR_Price = (GBPperUSD_Price * 1e18) / EURperUSD_Price;
        return GBPperEUR_Price;
    }
    
    // function to get price of LINK in EUR
    function getLINKperEUR_Price() public view returns(uint256) {
        uint256 LINKperUSD_Price = getLINKperUSD_Price();
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 LINKperEUR_Price = (LINKperUSD_Price * 1e18) / EURperUSD_Price;
        return LINKperEUR_Price;
    }

    // function to get price of USDC in EUR
    function getUSDCperEUR_Price() public view returns(uint256) {
        uint256 USDCperUSD_Price = getUSDCperUSD_Price();
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 USDCperEUR_Price = (USDCperUSD_Price * 1e18) / EURperUSD_Price;
        return USDCperEUR_Price;
    }

    // fucntion to get price of USD in EUR
    function getUSDperEUR_Price() public view returns(uint256) {
        uint256 USDperUSD_Price = 1e18;
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 USDperEUR_Price = (USDperUSD_Price * 1e18) / EURperUSD_Price;
        return USDperEUR_Price;
    }

}
