
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Person{
    string name;
    uint age;

    function getPersonDetails()public virtual  view returns (string memory, uint) {
        return (name,age);
    }

    function setPerson(string memory _name, uint _age)public {
        name=_name;
        age=_age;
    }

}


// contract Employee is Person{
//     uint empID;

//     function setEmployeDetails(string memory _name,uint _age,uint _empID)public {
//        setPerson(_name, _age); 
//        empID=_empID;
//     }

//      function getPersonDetails()public override view returns (string memory, uint) {
//         return (name,age);
//     }
// }