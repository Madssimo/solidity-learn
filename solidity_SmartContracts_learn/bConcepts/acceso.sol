pragma solidity >= 0.8.1;


contract RestrictedAccess {

    address public owner = msg.sender;
    uint public creationTime = block.timestamp;

    modifier onlyBy(address _account) {
        require(msg.sender == _account,
        'Sender not authorized');
        _;
    }

    modifier onlyAfter(uint _time) {
        require(block.timestamp >= _time,
        'function is called too early');
        _;
    }

    //escribir fucnion que cambaira la direccion del dueno
    function  changeOwnerAddress(address _newAddress) onlyBy(owner) public {
        owner = _newAddress;
    }

    //funcion para eliminar el dueno
    function disown() onlyBy(owner) onlyAfter(creationTime + 5 weeks) public {
        delete owner;
    }
    
    modifier costs(uint _amount) {
        require(msg.value >= _amount,
        'Not enought ether');
        _;
    }

    function forceChangeOwner(address _newOwner) payable public costs (100){
        owner = _newOwner;
    }
}