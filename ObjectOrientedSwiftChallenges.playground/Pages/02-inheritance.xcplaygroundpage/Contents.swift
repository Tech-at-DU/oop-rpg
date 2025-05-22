/*:

# Arcane Quest – Page 3

### Cutting Duplicate Code

Wizards and Priests both sling spells, but our engine repeats the same
`castSpell()` method in each class. Time to refactor!

## What you’ll practice

* Creating an intermediate superclass (`SpellCaster`)
* DRY principle (Don’t Repeat Yourself)
* Re‑wiring inheritance chains
  \*/

import Foundation

/* --------------------------------------------------
Existing Core Types (do not edit)
-------------------------------------------------- */
class Player {
  var name: String
  var hitPoints: Int


  init(name: String, hitPoints: Int = 10) {
      self.name = name
      self.hitPoints = hitPoints
  }

  func adventure() {
      print("\(name) goes adventuring!")
  }


}

class Fighter: Player {
  init(name: String) {
    super.init(name: name, hitPoints: 8)
  }

  func melee() {
      print("\(name) attacks with sword!")
  }

}

/* --------------------------------------------------
MARK: 1. SpellCaster Superclass
TODO:
• Subclass Player.
• Provide an initializer `init(name: String, hitPoints: Int)` that
simply forwards to super.
• Add method `castSpell()` that prints
"<name> casts a dazzling spell!".
-------------------------------------------------- */
class SpellCaster: /* 🛠 your superclass */ {
// 🛠️ Your code here
}

/* --------------------------------------------------
MARK: 2. Wizard – now inherits from SpellCaster
TODO:
• Change superclass to SpellCaster.
• Wizards start with 4 hitPoints.
(No need to re‑add castSpell!)
-------------------------------------------------- */
class Wizard: /* 🛠 SpellCaster */ {
// 🛠️ Your code here
}

/* --------------------------------------------------
MARK: 3. Priest – now inherits from SpellCaster
TODO:
• Change superclass to SpellCaster.
• Priests start with 6 hitPoints.
-------------------------------------------------- */
class Priest: /* 🛠 SpellCaster */ {
// 🛠️ Your code here
}

/* --------------------------------------------------
MARK: 4. Quick Test – Uncomment after you implement
-------------------------------------------------- */
/*
let merlin = Wizard(name: "Merlin")
merlin.castSpell()     // ➜ Merlin casts a dazzling spell!
print(merlin.hitPoints) // ➜ 4

let elora = Priest(name: "Elora")
print(elora.hitPoints)  // ➜ 6
elora.castSpell()       // ➜ Elora casts a dazzling spell!
*/

/* --------------------------------------------------
⭐ Stretch Challenge (optional)

1. Give SpellCaster a property `mana` (default 20) and modify
   castSpell() to consume 5 mana each cast, printing remaining mana.
2. Override castSpell() in Priest so it prints a different flavor text
   (e.g., "<name> channels holy light!").
   -------------------------------------------------- */


//: [Next](@next)
