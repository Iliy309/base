import Foundation

//: ## Опциональные типы

var someString = ""
var optionalString: String?


var possibleNumber = "1223s"
var convertedNumber = Int(possibleNumber)

convertedNumber = 15
convertedNumber = nil


//: ### Извлечение опционалов

if convertedNumber == nil {
    print("convertedNumber does not contain some integer value")
}

//: ### Принудительное извлечение опционалов

convertedNumber = 16

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!)")
}

print("convertedNumber has an integer value of \(convertedNumber ?? 0)")

//: ### Привязка опционалов

if let convertedNumber = convertedNumber {
    print("convertedNumber has an integer value of \(convertedNumber)")
}

print convertedNumber
//: ### Неявно извлеченные опционалы

var name: String! = "Tim"

var nameLabel = ""

nameLabel = name

