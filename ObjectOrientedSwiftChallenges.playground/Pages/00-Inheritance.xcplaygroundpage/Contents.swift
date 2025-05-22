/*:
 # Arcane Quest – Character Engine

 Welcome to **Arcane Quest**, a brand-new fantasy RPG in pre-production.
 You’ve been hired as a gameplay engineer to prototype the character
 system. Today’s task: build the foundation for all adventurers in the
 realm.

 ## What you’ll practice
 * Creating a base class with stored properties
 * Inheritance & custom initializers
 * Adding class-specific methods
 
 Complete each **TODO**, then run the “Quick Test” to verify your work.
 */

// --------------------------------------------------
// MARK: 1. Player Base Class
// TODO:
// • Add stored properties `name` (String) and `hitPoints` (Int).
// • Provide an initializer `init(name: String, hitPoints: Int = 10)`.
//
class Player {
    // 🛠️ Your code here
}



// --------------------------------------------------
// MARK: 2. Fighter Subclass
// Fighters are hardy frontline warriors who start with 8 HP
// and can perform a melee sword attack.
//
// TODO:
// • Subclass Player.
// • Override the initializer so Fighters begin with 8 hitPoints.
// • Add a method `melee()` that prints "<name> attacks with sword!".
//
class Fighter: /* 🛠️ your superclass */ {
    // 🛠️ Your code here
}



// --------------------------------------------------
// MARK: 3. Quick Test – Uncomment after you implement
/*
let fighter = Fighter(name: "Bjorn")
print(fighter.hitPoints)   // Expected output: 8
fighter.melee()            // Expected output: "Bjorn attacks with sword!"
*/



// --------------------------------------------------
// ⭐ Stretch Challenge (optional)
//
// 1. Give Player a method `heal(amount:)` that increases hitPoints.
// 2. Override it in Fighter to cap hitPoints so they never exceed 10.
//


//: [Next](@next)
