pragma solidity >=0.8.1;



contract Subasta {

    address payable public  beneficiary;
    uint public auctionEndTime;

    // estado actual de al suabasta
    address public highestBidder;
    uint public bidNum;
    uint public highestBid;
    bool ended;

    mapping(address => uint) pendingReturns;

    event highestBidIncreased(address bidder, uint amount);
    event auctionEnded(address winner, uint amount);

    constructor(uint _biddingTime, address payable _beneficiary) {
        beneficiary = _beneficiary;
        auctionEndTime = block.timestamp + _biddingTime;
    }

    function bid() public payable {
        if(block.timestamp > auctionEndTime) revert ('the aution has ended!');
        if(msg.value <= highestBid) revert ('sorry, teh bid is not high enough!');

        if (highestBid !=0){
            pendingReturns[highestBidder] += highestBid;
        }

        highestBidder = msg.sender;
        highestBid = msg.value;
        emit highestBidIncreased(msg.sender, msg.value);
    }

    function withdraw() public payable returns(bool){

        uint amount = pendingReturns[msg.sender];
        if(amount > 0){
            pendingReturns[msg.sender] = 0;
        }
        if(!payable(msg.sender).send(amount)) {
            pendingReturns[msg.sender] = amount;
        }

        return true;

    }

    function auctionEnd() public {
            if(block.timestamp < auctionEndTime) revert('the auction has not ended yet!');
            if(ended) revert('the auction is already over!');

            ended = true;
            emit auctionEnded(highestBidder, highestBid);
            beneficiary.transfer(highestBid);
        }

}