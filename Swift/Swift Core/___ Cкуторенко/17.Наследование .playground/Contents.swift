import Cocoa

var greeting = "Hello, playground"


/*
 1. класс артист имя-фаимилия метод выступление вызывает имя фамилию  певец- поет, танцер-танцует. художник меняет имя
 2.
  транспортное средсство скорость вместимость стоймость перевозки и переопределить его
 метод определящий сколько стоит перевезти  из пунка а в пункт б  людей
 
 3. люди. жирафы. собаки. крокодила . обезбяны  супер класс который
 */


class Artist {
    var name : String
    var surname : String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
    
    func performance () -> String{
          " - \(name) , \(surname)"
    }
}


var artist = Artist(name: "Владимр", surname: "Путин")
artist.performance()


class Actress :  Artist {
    var type: String = "Actress"
    override func performance() -> String {
         return type + super.performance()
    }
}

var actress = Actress(name: "Анна", surname:    "Вилачков")
actress.performance()


class Vokal : Artist {
    var type: String = "Vokal"
    override func performance() -> String {
         return type + super.performance()
    }
}

class Painter : Artist {
   
    var type: String = "Painter"
    override func performance() -> String {
        return type + "- " + name + " " + surname //super.performance()
    }
    
}

var painter = Painter(name: "художник", surname: "мариарти")
painter.performance()




//2.транспортное средсство скорость вместимость стоймость перевозки и переопределить его метод определящий сколько стоит перевезти  из пунка а в пункт б  людей

class Transport {
    var name : String
    var speed : Double
    var campacity : Double
    var priceOnPeaple : Double
    
    init (name: String, speed: Double, campacity: Double, priceOnPeople: Double) {
        self.name = name
        self.speed = speed
        self.campacity = campacity
        self.priceOnPeaple = priceOnPeople
    }
    
    func priceAll() -> Double {
        var result = priceOnPeaple * campacity
        return result
    }
}

class Car : Transport {
    var repair: Double = 20
    var fuel : Double = 10
    
    override func priceAll() -> Double {
        super.priceAll() - fuel - repair
    }
   
}

class Bicycle : Transport {
    var repair : Double = 5
    
    override func priceAll() -> Double {
        super.priceAll() - repair
    }
}


class Bus : Transport {
    var repair : Double = 100
    var fuel  :  Double = 40
    var driver : Double = 10
    override func priceAll() -> Double {
        super.priceAll() - repair - fuel - driver
    }
}


let car = Car(name: "BmV", speed: 70, campacity: 4, priceOnPeople: 1)
let bike = Bicycle(name: "bike", speed: 30, campacity: 1, priceOnPeople: 1)
let bus = Bus(name: "bus", speed: 70, campacity: 100, priceOnPeople: 3)

car.priceAll()
bike.priceAll()
bus.priceAll()

let array = [car, bike, bus]

for value in array {
   print( value.priceAll())
}


