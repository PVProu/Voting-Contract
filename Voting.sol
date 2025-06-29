//Licence
// SPDX-License-Identifier: LGPL-3.0-only

//Version
pragma solidity 0.8.24;

//Contract
contract votingSystem{
    //Variables
    address public owner;
    uint256 public votesEthereum;
    uint256 public votesPolygon;

    
    //Constructor
    constructor() {
        owner = msg.sender;
    }
    //Mapping
    mapping(address=>Voter)internal voters;

    //Enums
    enum Options{Ethereum, Polygon}
    //Struct
    struct Voter {
        bool hasVoted;
        Options ChosenOption;
        }

    //Modifier
    modifier votation{
        if (voters[msg.sender].hasVoted) revert();
        _;
    }
    modifier voteOptions (Options option){
        if (uint (option) > uint(type(Options).max)) revert();
        _;
    }
    modifier onlyOwner() {
    if(msg.sender != owner) revert("Not authorized");
    _;
    }
    //Events
    event hasAddressVoted (address voters, Options option);

    //Functions
    //External
    function vote_save(Options option_) public votation voteOptions(option_){
        voters[msg.sender] = Voter( true, option_);
        if (option_ == Options.Ethereum) votesEthereum++;
        else if (option_ == Options.Polygon) votesPolygon++;

        emit hasAddressVoted(msg.sender, option_);
         }
    
    function seeVote(address addr) public view onlyOwner returns (string memory){
        if (!voters[addr].hasVoted){
            return "This address has not voted yet";
        }
        return enumToStringOption (voters[addr].ChosenOption);
    }

    function hasAlreadyVoted (address addr_) public view onlyOwner returns (bool) {
        return voters[addr_].hasVoted;
    }

    function seeResults () public view returns (uint256 votesEthereum_, uint256 votesPolygon_){
        return (votesEthereum, votesPolygon);
    }

    //Internal 
    function enumToStringOption (Options option_) internal pure returns (string memory){ //We define it as pure because it doesn't modify the contract, it just makes a temporal transformation
        if (option_ == Options.Ethereum) return "Ethereum";
        if(option_==Options.Polygon )return "Polygon";
        return("Invalid");
    }   
}
    
