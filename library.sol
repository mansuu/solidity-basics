// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

library Math{
    function addTwoNumbers(uint _x, uint _y) public pure returns (uint){
        uint c = _x+_y;
        return c;
    }
}
