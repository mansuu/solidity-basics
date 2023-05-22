// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import "./foo.sol";
import {UnAuthorized, add as Func, Point} from "./foo.sol";

contract Import{
    Foo  foo = new Foo();

    function getFooName() public view returns (string memory){
        return foo.name();
    }

    function sum(uint _x, uint _y) public pure returns (uint){
        return add(_x, _y);
    }
}
