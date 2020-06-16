//
//  basicVariables.swift
//  
//
//  Created by Anderson Malaguitte on 16/06/2020.
//

import Foundation
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
