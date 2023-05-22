// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract parent{
    function parentFunc() public pure virtual returns (string memory){
        return "Return data from parent";
    }
}



contract child is parent{
    function parentFunc() public pure virtual override returns (string memory){
        return "data from child";
    }
}
contract parent2{
    function parent2Func() public pure virtual returns (string memory){
        return "Return data from parent";
    }
}

contract child2 is parent, parent2{

}