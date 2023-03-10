//: [Previous](@previous)

//: ## Структуры


/*:
    struct StructureName {
        var nameOfVarioable: DataType
        func someFunction {
            some code
        }
    }
 
 */
// Как правило используются  для хранения значений

struct PositionOnMap {
    let playerName: String
    var x: Int
    var y: Int
    
    func printPlayerPostion() {
        print("The position of \(playerName): X\(x):Y\(y)")
    }
}


//: ### Сравение классов и структур

class MacBook {
    
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func printDescription() {
        print("\(name) \(year) \(color)")
    }
}

let macBookPro = MacBook(name: "MacBook Pro", year: 2019, color: "Silver")

macBookPro.printDescription()

let macBookAir = macBookPro
macBookAir.name = "MacBook Air"

macBookPro.printDescription()
macBookAir.printDescription()

struct IPhone {
    
    var name: String
    var color: String
    var capacity: Int
    
    func printDescription() {
        print("\(name) \(color) \(capacity)Gb")
    }
}

let iPhoneXR = IPhone(name: "iPhone XR", color: "Coral", capacity: 128)

iPhoneXR.printDescription()

var iPhone11 = iPhoneXR
iPhone11.name = "iPhone 11"
iPhone11.color = "Space Gray"

iPhoneXR.printDescription()
iPhone11.printDescription()


//: ### Методы в структурах

struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        width * height
    }
    
    mutating func scale(width: Int, height: Int) {
        self.width *= width
        self.height *= height
    }
}

var rectangle = Rectangle(width: 10, height: 5)
rectangle.area
rectangle.scale(width: 2, height: 4)
rectangle.area
