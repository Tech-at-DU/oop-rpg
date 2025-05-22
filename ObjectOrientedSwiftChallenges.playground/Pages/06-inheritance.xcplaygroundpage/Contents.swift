/*:

# Arcane Quest – Page 7

### Adding Stored Properties & Customizing Default Behavior

Our Fighter can attack, but every warrior worth their steel has a
rousing **battle‑cry**. You’ll practice adding a *new stored property*,
injecting it via the initializer, and using it inside an overridden
`melee()`.

## What you’ll practice

* Declaring non‑optional stored properties in subclasses
* Initializers with default parameter values
* Calling `super.init` then setting subclass‑specific properties
* Overriding a method to incorporate the new property
  */

import Foundation

/* --------------------------------------------------
MARK: 1. Ability Protocols & Default Behavior (given)
-------------------------------------------------- */
protocol Casts {
var name: String { get }
func castSpell()
}

protocol Fights {
var name: String { get }
func melee()
}

extension Casts {
func castSpell() { print("(name) casts a dazzling spell!") }
}

extension Fights {
func melee() { print("(name) attacks with sword!") }
}

/* --------------------------------------------------
MARK: 2. Base Class (unchanged)
-------------------------------------------------- */
class Player {
  var name: String
  var hitPoints: Int

  init(name: String, hitPoints: Int = 10) {
      self.name = name
      self.hitPoints = hitPoints
  }

}

/* --------------------------------------------------
MARK: 3. Subclasses – Wizard & Priest (for context)
-------------------------------------------------- */
class Wizard: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 4) }
}

class Priest: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 6) }


  func castSpell() { print("\(name) heals the party!") }

}

/* --------------------------------------------------
MARK: 4. TODO – Enhance Fighter
Tasks:

1. Add a stored property `battleCry: String` **without** a default
   value at the declaration site.
2. Update `init(name:battleCry:)` so callers can supply a custom cry
   while providing a **default argument** of "Huzzah!".
3. Call `super.init` first, then assign `battleCry` and `hitPoints`.
4. Override `melee()` to print the battle‑cry before the sword attack
   (e.g., "Huzzah! — Conan attacks with sword!").
   -------------------------------------------------- */
   class Fighter: Player, Fights {
   // 🛠️ Your code here
   }

/* --------------------------------------------------
MARK: 5. Quick Test – Uncomment after you implement
-------------------------------------------------- */
/*
let conan = Fighter(name: "Conan")            // uses default cry
conan.melee()
// ➜ Huzzah! — Conan attacks with sword!

let xena = Fighter(name: "Xena", battleCry: "Ayiyiyiyi!")
xena.melee()
// ➜ Ayiyiyiyi! — Xena attacks with sword!
*/

/* --------------------------------------------------
⭐ Stretch Challenge

1. Give Elf an optional property `tribe` (String?) with default `nil`.
   Override `adventure()` to include tribe if present.
2. Think: Why *is* an optional appropriate here but not for `battleCry`?
   -------------------------------------------------- */



//: [Next](@next)
