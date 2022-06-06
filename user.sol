pragma solidity ^0.4.21;


$ solidity — version


import “stringUtils.sol”;


contract userRecords {}

// enum type variable to store user gender 
enum genderType { male, female } 
// Actual user object which we will store in ethereum contract 
struct user{ 
    string name; genderType gender; 
}

user user_obj;

// set user public function
// This is similar to persisting object in db.
function setUser(string name, string gender) public {
    genderType gender_type = getGenderFromString(gender);
    user_obj = user({name:name, gender: gender_type});
}
// get user public function
// This is similar to getting object from db.
function getUser() public returns (string, string) { 
    return (user_obj.name, getGenderToString(user_obj.gender));
}