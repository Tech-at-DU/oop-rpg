/*:

# Arcane Quest – Page 8

### Using Subclass State Inside an Overridden Protocol Method

In the last lesson you added a non‑optional `battleCry` property to
**Fighter**. Right now `melee()` still calls the *default* implementation
from the `Fights` protocol extension, so the battle‑cry never appears.
Your job: **override** `melee()` in Fighter so it incorporates the cry.

## What you’ll practice

* Referencing subclass‑specific state (`battleCry`) in an override
* Deciding when to call `super` vs. replace behavior completely
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
MARK: 3. Subclasses (Wizard & Priest for context)
-------------------------------------------------- */
class Wizard: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 4) }
}

class Priest: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 6) }
  func castSpell() { print("(name) heals the party!") }
}

class Elf: Player, Casts, Fights {
  init(name: String) { super.init(name: name, hitPoints: 6) }
}

/* --------------------------------------------------
MARK: 4. TODO – Upgrade Fighter to use battleCry
Tasks:

1. Keep stored property `battleCry: String` (no default at declaration).
2. `init(name:battleCry:)` should default to "Huzzah!".
3. Override `melee()` so output is:
   "<battleCry> — <name> attacks with sword!"
   (Hint: don't call `super.melee()`; replace entirely.)
   -------------------------------------------------- */
   class Fighter: Player, Fights {
   // 🛠️ Your code here
   }

/* --------------------------------------------------
MARK: 5. Quick Test – Uncomment after you implement
-------------------------------------------------- */
/*
let conan = Fighter(name: "Conan")
conan.melee()
// ➜ Huzzah! — Conan attacks with sword!

let xena = Fighter(name: "Xena", battleCry: "Ayiyiyiyi!")
xena.melee()
// ➜ Ayiyiyiyi! — Xena attacks with sword!
\*/

/* --------------------------------------------------
⭐ Stretch Challenge

1. Refactor the `battleCry` output into the `Fights` protocol extension
   using default implementation with `Self: Fighter` constraint.
2. What happens to Elf’s melee afterwards? Explain why.
   -------------------------------------------------- */


//: [Next](@next)
