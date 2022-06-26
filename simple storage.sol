// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.0;

contract SimpleStorage {
    
    //this will get initialized to 5
    uint256 public favoriteNumber = 5;
    
    struct People {
        uint256 favoriteNumber;
         string name;
    }

    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;  
   }
   function addPerson(string memory _name, uint256 _favoriteNumber) public{
         people.push(People(_favoriteNumber, _name));
         nameToFavoriteNumber[_name] = _favoriteNumber;
   }
}