//  basicVariables.swift

/**
* 1. Create 2 variables called characterName and weaponClassification and assign them string values of your choice.
* 2. Use the += operator to add a nickname string onto characterName.
* 3. Create a variable called currentMana and assign it a decimal value.
* 4. Create another variable called manaPercentage and assign it currentMana divided by 100, then explicitly convert it to a string.
* 5. Create a variable called debugStats and use string interpolation to lay out your character stats in a creative way. (HINT: use \n to create line breaks)
* 6. Create 2 boolean variables called questAccepted and canQuest respectively and assign them values of your choice.
* 7. Use the AND (&&) operator to evaluate if questAccepted and canQuest are both true and store it in a variable called questStatus.
* 8. Add an interpolated string that includes questStatus to debugStats using the append method and print out debugStats.
*/

// 1
var characterName : String = "John Brave";
var weaponClassification : String = "Legendary";

// 2
characterName += " (Warrior)";
print(characterName);

// 3
var currentMana : Double = 34.56;

// 4
var manaPercentage : String = String(currentMana / 100);

// 5
var debugStats : String = "The character named '\(characterName)' is looking for weapons classified as '\(weaponClassification)'...\n\(characterName) has currently \(currentMana) points of mana, which represents \(manaPercentage)% of the total mana.";
print(debugStats);

// 6
var questAccepted : Bool = false;
var canQuest : Bool = true;

// 7
let questStatus : Bool = questAccepted && canQuest;
print(questStatus);

// 8
debugStats.append(contentsOf: "\nThe current quest status is \(questStatus).");
print(debugStats);
