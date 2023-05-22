// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract eventContract{
    string value;
    event LogDetails(address indexed  sender, string value);
    function save(string memory _value) public {
        value = _value;
        emit LogDetails(msg.sender, _value);
    }
}