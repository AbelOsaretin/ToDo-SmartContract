// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;


contract TODo{

    struct HouseActivities{

      string  tittle;
      string  description;
      bool    isdone;  

    }

   HouseActivities[] public Cleaning; 


   function setACTivities( string memory _tittle, string memory _description, bool _isdone) external {

      Cleaning.push(HouseActivities( _tittle, _description,_isdone ));

   }


   function updatingTittleandDescription(uint _index, string memory _tittle, string memory _description )external {

      HouseActivities storage todo = Cleaning[_index];

      todo.tittle = _tittle;

      todo.description = _description; 

   }


   function toggleiSDone(uint _index)external {

      Cleaning[_index].isdone = !Cleaning[_index].isdone;

   }



  function Deleting()external {

    Cleaning.pop();

  }

   function allTODO()external view returns (HouseActivities[] memory){

    return Cleaning;

   }

}


