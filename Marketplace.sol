pragma solidity ^0.4.10;
contract ModelMarketplace {

    struct Bid {
        uint targetVariableIndex;
        uint price;
        address client;
        string[][] trainingData;
        string[][] testingData;
        uint bidIndex;
    }
    
    mapping(address=>Bid) bidmap;
    Bid[] liveBids;
    mapping(address => Bid[]) bidmap;
    event LogNewBid(Bid newBid);
    
    function addBid (uint tarVar, uint price, address bidAddress string[][] trainingData, string[][] testingData, uint index) {
        Bid lot = new Bid(tarVar, price, bidAddress, aTrainingData, aTestingData, index);
        liveBids.push(lot);
        bidmap[address].push(lot);
        LogNewBid(lot);
    }
    
    function removeBid(address

    
}
