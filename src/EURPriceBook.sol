// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {USDPriceBook} from "./USDPriceBook.sol";

contract EURPriceBook is USDPriceBook {

    // function to get price of ETH per EUR
    function getETHperEUR_Price() public view returns(uint256) {
        uint256 ETHperUSD_Price = getETHperUSD_Price();
        uint256 EURperUSD_Price = getEURperUSD_Price();
        uint256 ETHperEUR_Price = (ETHperUSD_Price / EURperUSD_Price) ;
        return ETHperEUR_Price;
    }

}
