
/*:
 # Arcane Quest – Page 2
 ### Arcane & Divine Heroes

 Your prototype now supports Fighters, but the realm also teems with
 spell-casters. You must extend the character engine with **Wizards** and
 **Priests**.

 ## What you’ll practice
 * Inheritance review
 * Custom initializers & subclass-specific defaults
 * Adding new instance methods (`castSpell()`)
 */

/* ---------------------------------------------------
   Pre-existing code from Page 1
   (Copy or ensure these definitions are accessible.)
 --------------------------------------------------- */

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

/* ---------------------------------------------------
   MARK: 1. Wizard Subclass
   TODO:
   • Subclass Player.
   • Wizards start with 4 hitPoints.
   • Add method castSpell() that prints
     "<name> casts Fireball!".
 --------------------------------------------------- */

class Wizard: /* 🛠 your superclass */ {
    // 🛠️ Your code here
}

/* ---------------------------------------------------
   MARK: 2. Priest Subclass
   TODO:
   • Subclass Player.
   • Priests start with 6 hitPoints.
   • Add method castSpell() that prints
     "<name> casts Heal!".
 --------------------------------------------------- */

class Priest: /* 🛠 your superclass */ {
    // 🛠️ Your code here
}

/* ---------------------------------------------------
   MARK: 3. Quick Test – Uncomment after you implement
 --------------------------------------------------- */
/*
let gandalf = Wizard(name: "Gandalf")
gandalf.adventure()        // ➜ Gandalf goes adventuring!
print(gandalf.hitPoints)   // ➜ 4
gandalf.castSpell()        // ➜ Gandalf casts Fireball!

let alara = Priest(name: "Alara")
print(alara.hitPoints)     // ➜ 6
alara.castSpell()          // ➜ Alara casts Heal!
*/

/* ---------------------------------------------------
   ⭐ Stretch Challenge (optional)
   1. Give Wizard an extra property `mana` (default 20) and
      a method `meditate()` that restores 5 mana.
   2. Give Priest a property `faith` (default 15) and
      override castSpell() so it consumes 3 faith each time.
 --------------------------------------------------- */


//: [Next](@next)
