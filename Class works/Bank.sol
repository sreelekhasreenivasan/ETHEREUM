

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Bank{

    mapping (address=>uint) balanceLedger;
    address public admin;
    constructor(){
        admin=msg.sender;
    }
    
    modifier balanceCheck(uint amt) {
        require(balanceLedger[msg.sender]>=amt,"Insufficient Balance");
        _;
    }

    function deposit() public payable {
        balanceLedger[msg.sender]=balanceLedger[msg.sender]+msg.value;
    }

    function getBalance() public view returns(uint) {
        require(msg.sender==admin);
        return balanceLedger[msg.sender];
    } 

    function withdraw(uint amt) public balanceCheck(amt){
        // require(balanceLedger[msg.sender]>=amt,"Insufficient Balance");
        balanceLedger[msg.sender]=balanceLedger[msg.sender]-amt;
        payable (msg.sender).transfer(amt);
    } 
    

     function transfer(uint amt, address recipient) public balanceCheck(amt){
        // require(balanceLedger[msg.sender]>=amt,"Insufficient Balance");
        balanceLedger[msg.sender]=balanceLedger[msg.sender]-amt;
        payable (recipient).transfer(amt);
    } 

    
}