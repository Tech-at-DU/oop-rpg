/*:

# Arcane Quest – Page 4

### Protocols: Adding Abilities without Inheritance Hell

Your character hierarchy works, but single inheritance limits you.
A new **Elf** class must both *fight* and *cast* spells. Instead of
copying code or building monster subclasses, you’ll attach behavior
via **protocols**.

## What you’ll practice

* Declaring protocols (Swift’s version of interfaces)
* Adopting multiple protocols in a class
* Implementing required methods

> **Note**: We will cover *protocol extensions* next lesson, so this page
> focuses only on defining protocols and conforming types.
> */

import Foundation

/* --------------------------------------------------
Core types from previous pages (provided)
-------------------------------------------------- */
class Player {
var name: String
var hitPoints: Int


init(name: String, hitPoints: Int = 10) {
    self.name = name
    self.hitPoints = hitPoints
}

func adventure() { print("\(name) goes adventuring!") }


}

/* --------------------------------------------------
MARK: 1. Define Ability Protocols
TODO:
• Create protocol `Casts` with a method requirement `castSpell()`.
• Create protocol `Fights` with a method requirement `melee()`.
-------------------------------------------------- */
// 🛠️ Your protocols here

/* --------------------------------------------------
MARK: 2. Character Classes using Protocols
TODO:
• Fighter inherits from Player and adopts Fights.
• Wizard inherits from Player and adopts Casts.
• Priest inherits from Player and adopts Casts.
• Elf inherits from Player and adopts *both* Casts and Fights.
• Give each class its specific hitPoint default:
Fighter 8, Wizard 4, Priest 6, Elf 6.
• Implement required methods inside each class. Use flavor text, e.g.
"<name> attacks with sword!"  or  "<name> casts Fireball!".
-------------------------------------------------- */
// 🛠️ Your classes here

/* --------------------------------------------------
MARK: 3. Quick Test – Uncomment after you implement
-------------------------------------------------- */
/*
let arthur = Fighter(name: "Arthur")
arthur.melee()          // ➜ Arthur attacks with sword!
print(arthur.hitPoints) // ➜ 8

let merlin = Wizard(name: "Merlin")
merlin.castSpell()      // ➜ Merlin casts Fireball!

let elrond = Elf(name: "Elrond")
elrond.melee()          // ➜ Elrond attacks with sword!
elrond.castSpell()      // ➜ Elrond casts Fireball!
\*/

/* --------------------------------------------------
⭐ Stretch Challenge (optional)

1. Add a protocol `Heals` with method `heal(target: Player)`.
2. Make Priest conform to `Heals` and implement the method so it
   increases the target’s hitPoints by 2.
   -------------------------------------------------- */



//: [Next](@next)



