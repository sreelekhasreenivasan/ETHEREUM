// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Demo{
    uint balance;
    event balanceUpdated(address indexed,uint indexed );

    function deposit() public payable {
        balance+=msg.value;
        emit balanceUpdated(msg.sender,msg.value);
    }
}