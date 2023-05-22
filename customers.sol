// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract customers {
    struct customer{
    string  cust_name;
    uint  cust_age;
    string  cust_location;
    }
    customer[] private allCustomers;
    
    constructor (string memory name, uint age, string memory location){
        customer memory cust = customer(name, age, location);
        allCustomers.push(cust);
    }

    function setCustomer(string memory name, uint age, string memory location) public {
        customer memory cust = customer(name, age, location);
        allCustomers.push(cust);
    }

    function getCustomerName() public view returns (string memory){
        return allCustomers[0].cust_name;
    }

    function radomSum(uint8 a, uint8 b) public pure returns(uint8) {
        uint8 c = a+b;
        return c;
    }
    function getCustomers() public view returns (customer[] memory){
        //return cust_name, cust_age, cust_location}
        return  allCustomers;
    }
    function getCustomersFromCountry(string memory country) public view returns(customer[] memory){
        customer[] memory custs;
        for (uint i; i < allCustomers.length; i++) 
        {
            if(keccak256(abi.encodePacked(allCustomers[i].cust_location)) == keccak256(abi.encodePacked(country))){
                custs[custs.length] = allCustomers[i];
            }
            
        }
        return custs;
    }
}