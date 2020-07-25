pragma solidity >=0.4.16;

contract Rent {
    string public guest;
    string public rent;
    
    function Rent(string newGuest,string newRent) public {
        guest = newGuest;
        rent = newRent;
    }

    function SetDetails(string newGuest,string newRent) public {
        guest = newGuest;
        rent = newRent;
    }
    
    function GetDetails() public view returns(string,string){
        return(guest,rent);
    }
}