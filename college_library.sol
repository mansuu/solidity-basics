// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CollegeLibrary{

    struct Book{
        uint bookId;
        string bookOwner;
        string bookName;
    }

   // Book[] books;

    address contractOwner;

    constructor(){
        contractOwner = msg.sender;
    }

    mapping(uint => Book) books;
    uint totalBooks = 0;

    
    modifier _onlyLibrarian() {
        require(msg.sender == contractOwner);
        _;
    }

    function addABook(uint _id, string memory _bookName) public{
        books[_id].bookId = _id;
        books[_id].bookOwner = "Librarian";
        books[_id].bookName = _bookName;
        totalBooks++;
    }

    function checkBookAvailability(uint _bookId) private view returns (bool){
        if(keccak256(abi.encodePacked(books[_bookId].bookOwner)) != keccak256(abi.encodePacked("Librarian")))
        {
            return false;
        }
        return true;
    }

    

    function rentABook( uint _bookId, string memory _rentTo) public _onlyLibrarian{
        require(checkBookAvailability(_bookId), "This is book is not avaiable");
            books[_bookId].bookOwner = _rentTo;
    }

   function getAllBooks() public view returns (Book[] memory){
    Book[] memory alBooks = new Book[](totalBooks);
    for (uint count = 0; count < totalBooks; count++) {
        alBooks[count] = books[count];
    }
    return alBooks;
}

    function getABookById(uint _bookId) public view returns (Book memory){
        return books[_bookId];
    }

}