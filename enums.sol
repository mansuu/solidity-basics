// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract enumContract{
    enum FreshJuiceChoice{SMALL, MEDIUM, LARGE}
    FreshJuiceChoice choice;
    FreshJuiceChoice defaultChoice = FreshJuiceChoice.MEDIUM;
    uint256 constant NULL = 0;


    function changeChoice(FreshJuiceChoice _choice) public {
        choice = _choice;
    }
    function getChoice() public view returns (FreshJuiceChoice){
       
        return  choice;
    }
    function getDefaultChoice() public view returns(FreshJuiceChoice){
        return  defaultChoice;
    } 
}