/*:

# Arcane Quest – Page 5

### Protocol *Extensions*:  Write Once, Reuse Everywhere

You’ve added `Casts` and `Fights` protocols, but every conforming class
still duplicates the same method bodies. Swift’s **protocol extensions**
let you write a *default implementation* once and share it with every
adopter—no inheritance needed.

## What you’ll practice

* Extending a protocol to add default behavior
* `where Self:` constraints so the extension can access properties of
  conforming classes
* Removing redundant code from subclasses

> **Reminder**: An extension adds methods *outside* the original type
> declaration—perfect for retro‑fitting functionality.
> \*/

import Foundation

/* --------------------------------------------------
MARK: 0. Ability Protocols (from previous lesson)
-------------------------------------------------- */
protocol Casts {             // requires castSpell()
  func castSpell()
}

protocol Fights {            // requires melee()
  func melee()
}

/* --------------------------------------------------
MARK: 1. Player Base Class (unchanged)
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
MARK: 2. Classes – Now *Without* Duplicate Methods
TODO:
• Remove all melee()/castSpell() bodies — they’ll come from the
protocol extensions.
-------------------------------------------------- */
class Fighter: Player, Fights {
  init(name: String) { super.init(name: name, hitPoints: 8) }
}

class Wizard: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 4) }
}

class Priest: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 6) }
}

class Elf: Player, Fights, Casts {
  init(name: String) { super.init(name: name, hitPoints: 6) }
}

/* --------------------------------------------------
MARK: 3. Protocol Extensions (write the code once!)
TODO:
• Extend Fights *where Self: Player* and add a default melee() that
prints "<name> attacks with sword!".
• Extend Casts *where Self: Player* and add a default castSpell() that
prints "<name> casts a dazzling spell!".
-------------------------------------------------- */
// 🛠️ Your protocol extensions here

/* --------------------------------------------------
MARK: 4. Quick Test – Uncomment after you implement
-------------------------------------------------- */
/*
let arwen = Elf(name: "Arwen")
arwen.melee()       // ➜ Arwen attacks with sword!
arwen.castSpell()   // ➜ Arwen casts a dazzling spell!

let ezra = Priest(name: "Ezra")
ezra.castSpell()    // ➜ Ezra casts a dazzling spell!
*/

/* --------------------------------------------------
⭐ Stretch Challenge (optional)

1. Override `castSpell()` in Wizard to print
   "<name> conjures a fireball!" (demonstrates how a class can still
   specialize after inheriting the default).
2. Give Fights extension a default implementation `powerAttack()` that
   prints "<name> performs a spinning slash!" and try it on Fighter.
   -------------------------------------------------- */




//: [Next](@next)


