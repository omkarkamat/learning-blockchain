// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.6.0;


contract Storage {

    uint256 number;
    struct People{
        string name;
        uint256 favourite_num;
    }
    
    People[] public person;
    mapping(string => uint256) public findFavoriteNum;
    

  
    function store(uint256 num) public {
        number = num;
    }

    
    function retrieve() public view returns (uint256){
        return number;
    }
    
    function addPerson(string memory _name,uint256 _favouritenum) public{
        person.push(People({name:_name,favourite_num:_favouritenum}));
        findFavoriteNum[_name]=_favouritenum;
    }
}
