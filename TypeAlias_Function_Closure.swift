/**
* 1. Create a type alias tuple called Attack with named values for name and damage
* 2. Write a simple function called attackEnemy with an integer parameter that prints out an interpolated string
* 3. Write an overloaded version of attackEnemy with a parameter of type Attack that returns an string
* 4. Use both attackEnemy methods
* 5. Create a type alias closure called AttackClosure that takes in an array of Attacks and returns void, then declare a test array of Attack values.
* 6. Write a function called fetchPlayerAttacks that has a closure parameter of type AttackClosure and no return value
* 7. Call fetchPlayerAttacks and loop through the array inside the closure body to print out its tuple values
*/

// 1
typealias Attack = (name: String, damage: Int);

// 2
func attackEnemy(damage: Int) {
    print("Attacking enemy, damage set to \(damage)");
}

// 3
func attackEnemy(attack: Attack) -> String {
    let text: String = "Attacking enemy with \(attack.name), the damage is \(attack.damage)";
    return text;
}

// 4
attackEnemy(damage: 10);
let customAttack = (name: "Punch", damage: 7);
let text = attackEnemy(attack: customAttack);
print(text);

// 5
typealias AttackClosure = ([Attack]) -> Void;
var attackValues: [Attack] = [
    (name: "Punch", damage: 7),
    (name: "Kick", damage: 10),
    (name: "Headbutt", damage: 5),
    (name: "SideKick", damage:8)
];

// 6
func fetchPlayerAttacks(closure: AttackClosure) {
    closure(attackValues);
}

// 7
fetchPlayerAttacks(closure: { (attacks) in
    for (attackName, attackDamage) in attacks {
        print("** Attack Info **\nName: \(attackName)\nDamage: \(attackDamage)");
    }
});
