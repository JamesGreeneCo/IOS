
protocol CanFly {
    func fly()
}

class Bird {
    var isFemale = true
    
    func layEgg()   {
        if isFemale {
            print("The bird makes a new bird in a shell")
        }
    }
    
}

class Eagle: Bird, CanFly {
    
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
    
    func fly() {
        print("The eagle flaps its wings and lifts off into the sky.")
    }
}

class Penguin: Bird {
   
    
    func swim() {
        print("The penguin paddles thorugh the water.")
    }
}

struct FlyingMeseum {
    func flyingDemo(flyingObject: CanFly)   {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("The airplane uses its engines")
    }
}

let myEagle = Eagle()
//myEagle.fly()
//myEagle.layEgg()
//myEagle.soar()
//
let myPeguin = Penguin()
//myPeguin.layEgg()
//myPeguin.swim()
//myPeguin.fly()
let myPlane = Airplane()
myEagle.fly()


let meseum = FlyingMeseum()
meseum.flyingDemo(flyingObject: myPlane)

