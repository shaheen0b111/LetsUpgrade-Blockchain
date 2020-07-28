pragma solidity ^0.4.17 < 0.6.12;

contract ReportCard {
    string public name;
    uint public rollno;
    string public batch;
    uint public mathsMarks;
    uint public physicsMarks;
    uint public chemistryMarks;
    uint public biologyMarks;
    string public result;
    uint public per;
   
    //constructor
    function ReportCard(string Name,uint RollNo,string Batch,uint MathsM, uint PhysicsM, uint ChemistryM,uint BiologyM) public {
        name = Name;
        rollno = RollNo;
        batch = Batch; 
        mathsMarks = MathsM;
        physicsMarks = PhysicsM;
        chemistryMarks = ChemistryM;
        biologyMarks = BiologyM;
        uint total = (MathsM + PhysicsM + ChemistryM + BiologyM);
        per = (total * 100 ) / 200;
        //each subject 50 marks
        if ( per > 45 ) {
            result = "PASS";
        }
        else {
            result = "FAIL";
        }
        
    }
    //Get details of Marks along with Result
    function getReportCard() view public returns(string,uint,string,string,uint) {
        return(name,rollno,batch,result,per);
    }
}