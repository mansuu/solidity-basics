// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract sendEther{

function send(address payable to) public payable {
    to.transfer(msg.value);
}


}