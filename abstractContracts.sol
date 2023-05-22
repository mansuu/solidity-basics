// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Car{
    uint wheels = 4;
    bool has4Wheels;

    function mustHave4Wheels() public virtual{
        has4Wheels = true;
    }
}

contract BMW is Car{
    bool implement4Wheels;
    
     function mustHave4Wheels() public override {
        implement4Wheels = false;
    } 
}