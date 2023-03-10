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

let currentDay: Weekday = .monday



//let country: Countries = .russia
//
//let value = country.rawValue
//print(value)
//: ### Использование инструкции Switch
enum Command {
    case up
    case down
    case left
    case right
}





let command = Command.right


switch command {
case .up:
    print("Go up")
case .down:
    print("Go down")
case .right:
    print("go right")
case .left:
    print("go left")
}
//: ### Исходные значения


enum Countries: String {
    case usa
    case russia
    case china
}


//: ### Инициализация
let country = Countries.usa

//: ### Связанные значения (ассоциированные параметры)
// Тип идентификатора человека
enum IdType {
    case passport(number: String)
    case driverLicense(number: String, expirationDate: Date)
    case noId
}


let id: IdType = .driverLicense(number: "jdjhg", expirationDate: Date())


switch id {
case .passport(let number):
    print(number)
case .driverLicense(let number, let expirationDate):
    print(number)
    print(expirationDate)
case .noId:
    print("Нет данных")
}
