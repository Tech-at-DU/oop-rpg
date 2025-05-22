/*:

# Arcane Quest – Page 6

### Overriding Protocol Extension Defaults

Protocol extensions give you one shared implementation, *but individual
classes can still specialize* when needed. Priests, for example, use
their magic to **heal** rather than attack. In this lesson you’ll learn
how method resolution works and how to override a default provided by a
protocol extension.

## What you’ll practice

* Revisiting the default implementations from last page
* Overriding a protocol‐extension method in a concrete class
* Understanding dynamic vs. static dispatch in Swift (glance)
*/

import Foundation

/* --------------------------------------------------
MARK: 1. Ability Protocols & Default Behavior
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
  func castSpell() {
    print("(name) casts a dazzling spell!")
  }
}

extension Fights {
  func melee() {
    print("(name) attacks with sword!")
  }
}

/* --------------------------------------------------
MARK: 2. Base Class
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
MARK: 3. Concrete Classes (no duplicate methods!)
 -------------------------------------------------- */
class Fighter: Player, Fights {
  init(name: String) { super.init(name: name, hitPoints: 8) }
}

class Wizard: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 4) }
}

class Priest: Player, Casts {
  init(name: String) { super.init(name: name, hitPoints: 6) }

  // TODO: Override the default castSpell() so Priests heal instead.
  // Expected output: "<name> heals the party!"

}

class Elf: Player, Casts, Fights {
  init(name: String) { super.init(name: name, hitPoints: 6) }
}

/* --------------------------------------------------
MARK: 4. Quick Test – Uncomment after you implement.
-------------------------------------------------- */
/*
let clancy = Priest(name: "Clancy")
clancy.castSpell()   // ➜ Clancy heals the party!

let arya = Elf(name: "Arya")
arya.melee()         // ➜ Arya attacks with sword!
arya.castSpell()     // ➜ Arya casts a dazzling spell!
*/

/* --------------------------------------------------
🧠 Behind the scenes – Method Dispatch
• The compiler picks the *most specific* implementation available.
• If a concrete class provides its own method, it wins over the
protocol-extension default.
• If not, the default extension method is used.
-------------------------------------------------- */

/* --------------------------------------------------
⭐ Stretch Challenge

1. Override `melee()` in Elf so it prints
   "<name> fires an arrow!". Which implementation will run on an Elf
   referenced as `Fights`? Try:
   let legolas: Fights = Elf(name: "Legolas")
   legolas.melee()  // what prints?
2. Discuss: Why does Swift pick that implementation? (Hint: static vs
   dynamic dispatch rules for protocol extensions.)
   -------------------------------------------------- */



//: [Next](@next)
