/**
* 1. Create two optional string variable called lefthandWeapon and righthandWeapon. Assigning them initial values is at your discretion.
* 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
* 3. Create a dictionary called playerExp and assign it some key-value pairs of type string and integer.
* 4. Use a for-in loop to iterate over playerExp and capture the keys and values.
* 5. Add a guard statement inside the for-in loop to make sure each player is at least level 1 to proceed. Don't forget to include the continue keyword.
* 6. Use a switch statement to define the following cases: 6a. exp is equal to 32 6b. exp is between 200 and 500 6c. Use value binding to store exp and check that it is greater than 500 using the where keyword
*/


// 1
var lefthandWeapon : String? = "Hammer";
var righthandWeapon : String? = "Knife";

// 2
if let lw = lefthandWeapon, let rw = righthandWeapon {
    print("The weapon on the left hand is a \(lw) and the weapon on the right hand is a \(rw).");
}

// 3
var playerExp : [String : Int] = [
    "Player_1": 32 ,
    "Player_2": 12,
    "Player_3": 32,
    "Player_4": 250,
    "Player_5": 201,
    "Player_6": 0
];

// 4
for (name, value) in playerExp {
    print("The player '\(name)' has '\(value)' of experience at the moment");
}

// 5
for (name, value) in playerExp {
    guard value > 1 else {
        print("The player \(name) has no experience...");
        continue;
    }
    print("The experience status for '\(name)' is equals to '\(value)' at the moment");
}

// 6
print("\n******** 6 ******** \n");
for (name, value) in playerExp {
    switch value {
    case 32:
        print("Experience is 32 for Player: \(name)");
    case 200...500:
        print("Experience between 200 and 500. Player: \(name), Experience: \(value)");
    case (let localValue) where localValue > 500:
        print("Time to level up...");
    default:
        print("Default, nothing to do here. Player: \(name)");
    }
