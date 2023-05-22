// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorContract{
    uint public age;
    function testRequire(uint _age) public {
        require(_age >= 18, "You are not eligible");
        age = _age;
    }

    function testRevert(uint _age) public{
        age = _age;
        if(_age < 18){
            revert("You must be older than 18 years");
        }
    }

    function testAssert() public view {
        // Assert should only be used to test for internal errors,
        // and to check invariants.

        // Here we assert that num is always equal to 0
        // since it is impossible to update the value of num
        assert(age >= 18);
    }


}