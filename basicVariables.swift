//  basicVariables.swift

// 1 - Declaring two String variables and initializing them.
var characterName : String = "John Brave";
var weaponClassification : String = "Legendary";

// 2 - Modifying the characterName String variable here
characterName += " (Warrior)";
print(characterName);

// 3 - Declaring a Double variable
var currentMana : Double = 34.56;

// 4 - Declaring a String variable named manaPercentage and assigning to it the result of an operation converted as a String.
var manaPercentage : String = String(currentMana / 100);

// 5 - String interpolation example
var debugStats : String = "The character named '\(characterName)' is looking for weapons classified as '\(weaponClassification)'...\n\(characterName) has currently \(currentMana) points of mana, which represents \(manaPercentage)% of the total mana.";
print(debugStats);

// 6 - Declaring two Boolean variables
var questAccepted : Bool = false;
var canQuest : Bool = true;

// 7 - Declaring a constant variable (let) and assigning it the result of a logical operation
let questStatus : Bool = questAccepted && canQuest;
print(questStatus);

// 8 - Modifying the value of the variable debugStats and printing it out.
debugStats.append(contentsOf: "\nThe current quest status is \(questStatus).");
print(debugStats);
