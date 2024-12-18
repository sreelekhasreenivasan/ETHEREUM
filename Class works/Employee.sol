// SPDX-License-Identifier: MIT
import "./Inheritance.sol";

pragma solidity ^0.8.20;

contract Employee is Person{
    uint empID;

    function setEmployeDetails(string memory _name,uint _age,uint _empID)public {
       setPerson(_name, _age); 
       empID=_empID;
    }

     function getPersonDetails()public override view returns (string memory, uint) {
        return (name,age);
    }
}