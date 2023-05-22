// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ICar {
    function getNumberOfAirBags() external returns(uint);
}

contract Alto is ICar{
    function getNumberOfAirBags() external pure returns (uint){
        return 2;
    }
}

contract Brezza is ICar{
    function getNumberOfAirBags() external pure returns (uint){
        return 4;
    }
}

// other way to use interface

contract Hyundai{
    function getBags(address account) external view {
        // ICar(account).getNumberOfAirBags();
    }
}