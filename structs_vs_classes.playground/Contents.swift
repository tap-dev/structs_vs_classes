import UIKit

// What are the differences between Structures and Classes in Swift?

// http://tapdev.co


// Both structures and classes can define properties to store values, and define methods to provide functionality.

// Structures have an automatically generated "memberwise initialiser", whereas classes must declare a "designated initialiser"


struct Rey {
    
    var honour: Int
    
    var fear: Int
    
    func resistTheDarkSide() { }
}

let rey = Rey(honour: 40, fear: 9) // <- automatically generated "memberwise initialiser"

class KyloRen {
    
    var honour: Int
    
    var fear: Int
    
    init(honour: Int, fear: Int) { // <- "designated initialiser"
        
        self.honour = honour
        
        self.fear = fear
    }
    
    func turnToTheLight() { }
}

let kyloRen = KyloRen(honour: 2, fear: 70)


// Structures are value types and are passed by copy, meaning different instances will retain their own unique values

// Classes are reference types and are passed by reference, meaning a single instance can have multiple references


struct Luke {
    
    var darkSide = 4
    
    var JediPowers = 90
}

var originalLuke = Luke()

var meditatingLuke = originalLuke

meditatingLuke.JediPowers = 1000

print("Struct originalLuke jedi powers = \(originalLuke.JediPowers)")

print("Struct meditatingLuke jedi powers = \(meditatingLuke.JediPowers) (originalLuke jedi powers unchanged!)")


class Anakin {
    
    var darkSide = 50
    
    var JediPowers = 60
}

var anakin = Anakin()

var vader = anakin

vader.darkSide = 800

print("Class anakin dark side = \(anakin.darkSide)")

print("Class vader = \(vader.darkSide) (this has also mutated anakin dark side!)")


// Classes can inherit from other classes

// Structures cannot inherit from other structures (though they can conform to Protocols, like classes)


class VehicleClass {
    
    let speed: Int
    
    let power: Int
    
    init(speed: Int, power: Int) {
        
        self.speed = speed
        
        self.power = power
    }
    
    func fire() { }
}

class StarDestroyer : VehicleClass { // <- this will compile
    
    override func fire() {
        
        print("fire!")
    }
}

struct VehicleStruct {
    
    let speed: Int
    
    let power: Int
    
    func fire() { }
}

//struct Dreadnought : VehicleStruct { // <- this will not compile!!
//
//    override func fire() {
//
//        print("fire!")
//    }
//}

protocol WeaponsFireable {
    
    func fire()
}

class MilleniumFalcon : WeaponsFireable {
    
    func fire() { }
}

struct TieFighter : WeaponsFireable {
    
    func fire() { }
}






