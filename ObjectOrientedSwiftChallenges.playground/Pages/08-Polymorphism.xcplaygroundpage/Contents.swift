/*:

# Arcane Quest – Page 9

### Parties, Encounters & Polymorphism

You’ve crafted heroes with inheritance, protocols, extensions, and
overrides. Now assemble them into a **party** and watch polymorphism do
the heavy lifting.

## What you’ll practice

* Storing mixed subclasses in a `[Player]` array
* Building protocol‑typed collections (`[Casts]`, `[Fights]`)
* Seeing which implementation runs when calling through a protocol
  */

import Foundation

/* --------------------------------------------------
MARK: 1. Abilities & Defaults (quick recap)
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
MARK: 2. Player Hierarchy (simplified)
-------------------------------------------------- */
class Player {
  var name: String
  var hitPoints: Int
  init(name: String, hitPoints: Int = 10) {
    self.name = name; self.hitPoints = hitPoints
  }
  func adventure() { print("(name) explores the dungeon…") }
}

class Fighter: Player, Fights {
  var battleCry: String
  init(name: String, battleCry: String = "Huzzah!") {
  self.battleCry = battleCry
    super.init(name: name, hitPoints: 8)
  }
  func melee() { print("(battleCry) — (name) attacks with sword!") }
}

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
MARK: 3. Build a Mixed Party (given)
-------------------------------------------------- */
let party: [Player] = [
  Fighter(name: "Conan"),
  Wizard(name: "Merlin"),
  Priest(name: "Clancy"),
  Elf(name: "Arwen")
]

/* --------------------------------------------------
MARK: 4. TODO A – Protocol‑Typed Arrays
Create two new arrays:
• `casters` – every party member that conforms to Casts
• `fighters` – every party member that conforms to Fights
-------------------------------------------------- */
// 🛠️ Your code here: var casters: \[Casts] = …   var fighters: \[Fights] = …

/* --------------------------------------------------
MARK: 5. TODO B – startBattle()
Write a function that:

1. Iterates over `fighters` and calls `melee()`.
2. Iterates over `casters` and calls `castSpell()`.
   -------------------------------------------------- */
   // 🛠️ Your function startBattle() {}

/* --------------------------------------------------
MARK: 6. Quick Test – Uncomment after you implement
-------------------------------------------------- */
/*
startBattle()
// Example output (order may vary):
// Huzzah! — Conan attacks with sword!
// Merlin casts a dazzling spell!
// Clancy heals the party!
// Arwen attacks with sword!
// Arwen casts a dazzling spell!
*/

/* --------------------------------------------------
🧠 Think About It
• Why does Clancy’s override print "heals the party" while Merlin &
Arwen use the default castSpell()?
• If you store `let wiz: Casts = Wizard(name: "Gandalf")` and call
`wiz.castSpell()`, what prints? Why?
*/

/* --------------------------------------------------
⭐ Stretch Challenge – Damage System

1. Define protocol `Damageable` with `var hitPoints: Int { get set }`
   and `mutating func takeDamage(_ amount: Int)` defaulting to
   `hitPoints -= amount`.
2. Conform Player to Damageable.
3. Modify `startBattle()` so each melee attack deals 2 damage to a
   random Damageable in the party.
4. Print each member’s HP at the end. Who survived?
   -------------------------------------------------- */

