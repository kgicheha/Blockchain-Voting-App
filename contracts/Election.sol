// SPDX-License-Identifier: MIT
pragma solidity ^0.5.16;

contract Election {
    //Model a candidate
    struct Candidate {
        //uint means unsigned integer
        uint256 id;
        string name;
        uint256 voteCount;
    }

    //Store candidates
    //Fetch candidate
    //mapping is used assosicate key-value pairs with one another
    mapping(uint256 => Candidate) public candidates;

    //Store candidate Count
    uint256 public candidatesCount;

    // Constructor
    constructor() public {
        addCandidate("Candidate 1");
        addCandidate("Candidate 2");
    }

    function addCandidate(string memory _name) private {
        //keeps count of candidates in the elections
        //each time a candidate is added, he/she starts with 0 votes
        candidatesCount++;
        candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
    }
}
