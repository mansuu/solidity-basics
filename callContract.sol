// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Callee{
uint  x;
uint value;

function setX(uint _x) public returns(uint) {
    x = _x;
    return x;
}

function setXAndSendEther(uint _x) public payable returns(uint, uint){
    x = _x;
    value = msg.value;
    return (x, value);
}
}

contract Caller {
    function setX(Callee _callee, uint _x) public returns(uint) {
        uint amt = _callee.setX(_x);
        return amt;
    }

    function setXFromAddress(address _addr, uint _x) public {
        Callee _callee =  Callee(_addr);
        _callee.setX(_x);
    }

    function setXandSendEther(Callee _callee, uint _x) public payable {
        _callee.setXAndSendEther{value:msg.value}(_x);
       

    }
}