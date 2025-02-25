// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract HelperConfig {

    NetworkingConfig public activeNetworkConfig;

    struct NetworkingConfig{
        address priceFeed; // ETC/USD price feed address
    }

    constructor(){
        if(block.chainid == 11155111){
            activeNetworkConfig = getSepoliaEthConfig();
        }else {
            activeNetworkConfig = getAnvilEthConfig();
        }
    }
    function getSepoliaEthConfig() public pure returns(NetworkingConfig memory){
        // price feed address
        NetworkingConfig memory sepoliaConfig = NetworkingConfig({
            priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306
        });
        return sepoliaConfig;
    }

    function getAnvilEthConfig() public pure returns(NetworkingConfig memory){
        // price feed address
        NetworkingConfig memory AnvilConfig = NetworkingConfig({
            priceFeed: 0x694AA1769357215DE4FAC081bf1f309aDC325306 //test
        });
        return AnvilConfig;
    }
}