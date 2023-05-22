// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract LandRegistry{
    address public contractOwner ;

    constructor() {
        contractOwner = msg.sender;
    }

    modifier _onlyOwner() {
        require(msg.sender == contractOwner);
        _;
    }

    struct Property{
        uint256 id;
        string name;
        string owner;
        uint256 value;
        uint256 area;

    }

    mapping (uint256 => Property) public properties;

    function addProperty(uint256 _propertyId, string memory _name, string memory _owner, uint256 _value, uint256 _area) public{
        properties[_propertyId].id = _propertyId;
        properties[_propertyId].name = _name;
        properties[_propertyId].owner = _owner;
        properties[_propertyId].value = _value;
        properties[_propertyId].area = _area;
    }

    function getPropertyById(uint256 id) public view returns (Property memory){
        return properties[id];
    }

    function transferPropertyOwner(uint256 _propertyId, string memory _newOwner) public _onlyOwner{
            properties[_propertyId].owner = _newOwner;
    }

}