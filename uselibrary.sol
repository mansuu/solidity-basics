// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Math} from "./library.sol";

contract mathOperation{

    function add(uint _x, uint _y) public pure returns (uint){
      return   Math.addTwoNumbers(_x, _y);
    }
}