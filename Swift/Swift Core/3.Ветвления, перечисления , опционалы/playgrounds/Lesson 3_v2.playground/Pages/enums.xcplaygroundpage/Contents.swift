import Foundation
/*:
 Перечисления
 
    enum EnumerationName {
        case enumeration
    }
 
 */
// enum - перечисление

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

var weekday = Weekday.monday
weekday = .tuesday


//: ### Использование инструкции Switch

switch weekday {
case .monday:
    print("Today is \(weekday). The alarm is set at 8 am")
case .tuesday:
    print("Today is \(weekday). The alarm is set at 8:30 am")
case .wednesday:
    print("Today is \(weekday). The alarm is set at 7:50 am")
case .thursday:
    print("Today is \(weekday). The alarm is set at 8 am")
case .friday:
    print("Yay! Today is \(weekday). The alarm is set at 8:30 am")
default:
    print("Today is \(weekday). Alarm is not set")
}

//: ### Исходные значения


enum Countries: String {
    case usa = "USA"
    case russia = "Russia"
    case china = "China"
}

//let usa = Countries.usa
//print(usa.rawValue)



enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var earth = Planet.earth
print("Earth is the \(earth.rawValue) planet from the sun")


//: ### Инициализация
//
let possiblePlanet = Planet(rawValue: 7)
print("The seveth planet is \(possiblePlanet)")


//: ### Связанные значения (ассоциированные параметры)

enum IdType {
    case passport(id: String)
    case driverLicense(number: String, expirationDate: Date)
}

