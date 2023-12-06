// Get funds from users
// Users can fund either BTC, USD, USDC, GBP, EUR, or native ETH
// Only Admin can pull out funds
// Minimum funding value is set to $100

// ETH/USD: 0x694AA1769357215DE4FAC081bf1f309aDC325306
// BTC/USD: 0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43
// EUR/USD: 0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910
// GBP/USD: 0x91FAB41F5f3bE955963a986366edAcff1aaeaa83
// USDC/USD: 0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E

// SPDX-License-Identifier: MIT

pragma solidity ^ 0.8.0;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract Fund3 {

    uint256 public minFund = 100e18;

    // function to fund with ETH
    function fundETH() public payable {
        require(ETHAmountin$(msg.value) >= minFund, "ETH amount is too low!");
    }

    // function to get price of ETH in USD
    function getETHPrice() public view returns(uint256) {
        AggregatorV3Interface ETHFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        ( , int256 answer, , , ) = ETHFeed.latestRoundData();
        // typecast 'answer' form int256 to uint256 (since msg.value is in uint256),
        // and multiply by 1e10 to bring it to 1e18 (since msg.value is in 1e18) and 'answer' is in 1e8 (check getETHDecimal() to confirm)
        return uint256(answer * 1e10);
    }

    // function to convert msg.value to its converted value based off its ETH price (getETHPrice) 
    function ETHAmountin$(uint256 amount) public view returns(uint256) {
        uint256 ETHPrice = getETHPrice();
        uint256 ETHAmountInUSD = (amount * ETHPrice);
        return ETHAmountInUSD;
    }

    // function to get decimal places of the ETH/USD price feed
    function getETHDecimal() public view returns(uint8) {
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).decimals();
    }

    // function to get price of BTC in USD
    function getBTCPrice() public view returns(uint256) {
        AggregatorV3Interface BTCFeed = AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43);
        ( , int256 answer, , , ) = BTCFeed.latestRoundData();
        // typecast 'answer' form int256 to uint256 (since msg.value is in uint256),
        // and multiply by 1e10 to bring it to 1e18 (since msg.value is in 1e18) and 'answer' is in 1e8 (check getBTCDecimal() to confirm)
        return uint256(answer * 1e10);
    }

    // function to convert msg.value to its converted value based off its BTC price (getBTCPrice)
    function BTCAmountin$(uint256 amount) public view returns(uint256) {
        uint256 BTCPrice = getBTCPrice();
        uint256 BTCAmountUSD = (amount * BTCPrice);
        return BTCAmountUSD;
    }

    // function to get decimal places of BTC/USD price feed
    function getBTCDecimal() public view returns(uint8) {
        return AggregatorV3Interface(0x1b44F3514812d835EB1BDB0acB33d3fA3351Ee43).decimals();
    }

    // function to get price of BTC in native ETH
    function BTCinETH() public view returns(uint256) {
        uint256 BTCPriceinUSD = getBTCPrice();
        uint256 ETHPriceinUSD = getETHPrice();
        uint256 BTCinETHPrice = (BTCPriceinUSD * 1e18) / ETHPriceinUSD;
        return BTCinETHPrice;
    }

    // function to get price of USDC in native ETH
    function USDCinETH() public view returns(uint256) {
        uint256 USDCPriceinUSD = getUSDCPrice();
        uint256 ETHPriceinUSD = getETHPrice();
        uint256 USDCinETHPrice = (USDCPriceinUSD * 1e18) / ETHPriceinUSD;
        return USDCinETHPrice;
    }

    // function to get price of GBP in native ETH
    function GBPinETH() public view returns(uint256) {
        uint256 GBPPriceinUSD = getGBPPrice();
        uint256 ETHPriceinUSD = getETHPrice();
        uint256 GBPinETHPrice = (GBPPriceinUSD * 1e18) / ETHPriceinUSD;
        return GBPinETHPrice;
    }

    // function to get price of EUR in native ETH
    function EURinETH() public view returns(uint256) {
        uint256 EURPriceinUSD = getEURPrice();
        uint256 ETHPriceinUSD = getETHPrice();
        uint256 EURinETHPrice = (EURPriceinUSD * 1e18) / ETHPriceinUSD;
        return EURinETHPrice;
    }

    // function to get price of USD in native ETH
    function USDinETH() public view returns(uint256) {}

    // function to get price of EUR in USD
    function getEURPrice() public view returns(uint256) {
        AggregatorV3Interface EURFeed = AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910);
        (, int256 answer, , , ) = EURFeed.latestRoundData();
        // typecast 'answer' form int256 to uint256 (since msg.value is in uint256),
        // and multiply by 1e10 to bring it to 1e18 (since msg.value is in 1e18) and 'answer' is in 1e8 (check getEURDecimal() to confirm)
        return uint256(answer * 1e10);
    }

    // function to convert msg.value to its converted value based off its EUR price (getEURPrice)
    function EURAmountin$(uint256 amount) public view returns(uint256) {
        uint256 EURPrice = getEURPrice();
        uint256 EURAmountinUSD = (amount * EURPrice);
        return EURAmountinUSD;
    }

    // function to get decimal places of the EUR/USD price feed
    function getEURDecimal() public view returns(uint8) {
        return AggregatorV3Interface(0x1a81afB8146aeFfCFc5E50e8479e826E7D55b910).decimals();
    }

    // function to get price of GBP in USD
    function getGBPPrice() public view returns(uint256) {
        AggregatorV3Interface GBPFeed = AggregatorV3Interface(0x91FAB41F5f3bE955963a986366edAcff1aaeaa83);
        (, int256 answer, , , ) = GBPFeed.latestRoundData();
        // typecast 'answer' form int256 to uint256 (since msg.value is in uint256),
        // and multiply by 1e10 to bring it to 1e18 (since msg.value is in 1e18) and 'answer' is in 1e8 (check getGBPDecimal() to confirm)
        return uint256(answer * 1e10);
    }

    // function to convert msg.value to its converted value based off its GBP price (getGBPPrice)
    function GBPAmountin$(uint256 amount) public view returns(uint256) {
        uint256 GBPPrice = getGBPPrice();
        uint256 GBPAmountinUSD = (amount * GBPPrice);
        return GBPAmountinUSD;
    }

    // function to get decimal places of GBP/USD price feed
    function getGBPDecimal() public view returns(uint8) {
        return AggregatorV3Interface(0x91FAB41F5f3bE955963a986366edAcff1aaeaa83).decimals();
    }

    // function to return price of USDC in USD
    function getUSDCPrice() public view returns(uint256) {
        AggregatorV3Interface USDCFeed = AggregatorV3Interface(0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E);
        ( , int256 answer, , , ) = USDCFeed.latestRoundData();
        // typecast 'answer' form int256 to uint256 (since msg.value is in uint256),
        // and multiply by 1e10 to bring it to 1e18 (since msg.value is in 1e18) and 'answer' is in 1e8 (check getUSDCDecimal() to confirm)
        return uint256(answer * 1e10);
    }

    // function to convert msg.value to its converted value based off its USDC price (getUSDCPrice)
    function USDCAmountin$(uint256 amount) public view returns(uint256) {
        uint256 USDCPrice = getUSDCPrice();
        uint256 USDCAmountinUSD = (amount * USDCPrice);
        return USDCAmountinUSD;
    }

    // function to get decimal places of USDC/USD price feed
    function getUSDCDecimal() public view returns(uint8) {
        return AggregatorV3Interface(0xA2F78ab2355fe2f984D808B5CeE7FD0A93D5270E).decimals();
    }

}
