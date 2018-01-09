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
    
    Bid[] liveBids;
    /*mapping(address => Bid[]) bidmap;*/
    event LogNewBid(Bid newBid);
    
    function addBid (uint tarVar, uint price, address bidAddress, string[][] trainingData, string[][] testingData, uint index) 
                                                                                                            returns (bool success) {
        Bid lot = new Bid(tarVar, price, bidAddress, aTrainingData, aTestingData, index);
        liveBids.push(lot);
        /*bidmap[address].push(lot);*/
        LogNewBid(lot);
    }
    
    function removeBid(address aClient, index anIndex) returns (bool success) {
        for(unit i = 0; i < 100 /*ONLY ALLOWS 100 BIDS AT A TIME*/; i++) {
            address tempAddress = liveBids[i].client;
            unit tempIndex = liveBids[i].client
            if(tempAddress == aClient && tempIndex == anIndex) {
                liveBids[i] = liveBids[liveBids.length-1];
            }
        }
        return true;
     }
}
