pragma solidity >= 0.8.1;

contract aprendeMapping {
     mapping(address => uint) public miMap;

     function getAddress(address _addr) public view returns(uint){
        return miMap[_addr];
     }

     function setAddress(address _addr, uint _i) public{
        miMap[_addr] = _i;
     }

     function deleteAddress(address _addr) public {
        delete miMap[_addr];
     }

     mapping(uint => Movie) movie;
     mapping(address => mapping(uint => Movie)) public myMovie;
     
     struct Movie {
        string title;
        string director;
     }

     function addMovie(uint id, string memory title, string memory director) public {
        movie[id] = Movie(title, director);
     }

     function addMyMovie(uint id, string memory title, string memory director) public {
        myMovie[msg.sender][id] = Movie(title, director);
     }


}