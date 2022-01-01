// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;


// Contract has similarities to 'class" in other languages (class variables, inheritance, etc.)
contract Transactions {
    // u = unsigned - represent positive integers, not positive and negative integers
    // int = integer
    // 256 - 256 bits in size
    uint256 transactionCount;

    // B. Events
    // Events are notify external parties; easy to search and
    // access events from outside blockchain (with lightweight clients)
    // typically declare after contract parameters

    // Typically, capitalized - and add Log in front to be explicit and prevent confusion
    // with a function call

    // Declare
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    // Unlike other languages, CANNOT iterate through all elements in
    // mapping, without knowing source keys - can build data structure
    // on top to do this
  
    struct TransferStruct {
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver, uint amount, string memory message, string memory keyword) public {
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);
    }

    function getAllTransactions() public view returns (TransferStruct[] memory) {
        return transactions;
    }

    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}