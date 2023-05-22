// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

struct Point{
    uint x;
    uint y;

    
}
error UnAuthorized(address caller);

function add(uint _x, uint _y) pure returns(uint){
    return  _x+_y;
} 

contract Foo{
    string public name = "FOO";
}
