pragma solidity >= 0.8.1;


contract security {
    address public persona;
    mapping (address => uint) public balances;


    function sendRefund() public onlyOwner returns(bool succeess) {
        if(!persona.send(amount)) {
            return false;
        }

    function claimRefund() public {
        require(balances[msg.sender] > 0);
        msg.sender.transfer(balances[msg.sender]);
            
        }
    function withdrawFunds(uint amount) public returns(bool success){
        require(balances[msg.sender] >= amount);
        balances[msg.sender] -= amount;
        msg.sender.transfer(amount);
        return true;
    }

    }

}