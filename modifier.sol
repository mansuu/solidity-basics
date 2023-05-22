// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract FunctionModifier{
    address public owner;
    uint balance;

    constructor(uint _balance){
        balance = _balance;
        owner = msg.sender;
    }

    function showBalance() public view onlyOwner returns(uint){
        return balance;
    }
    modifier validAddress(address _address){
        require(_address != address(0), "Address is not valid");
        _;
    }
    modifier onlyOwner(){
require(msg.sender == owner, "Owner can be changed only by owner");
_;
    } 

    function changeOwner(address _newOwner) public onlyOwner{
        
        owner = _newOwner;
    }
    function transact(address _sender, uint _balance) public validAddress(_sender){
        balance += _balance;
    }
}