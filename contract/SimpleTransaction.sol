// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleTransaction {
    struct Transaction {
        address seller;
        address buyer;
        uint amount;
        uint timestamp;
    }
    
    Transaction[] public transactions;
    
    function createTransaction(address _buyer, uint _amount) public {
        transactions.push(Transaction(msg.sender, _buyer, _amount, block.timestamp));
    }
    
    function getTransactions() public view returns (Transaction[] memory) {
        return transactions;
    }
}