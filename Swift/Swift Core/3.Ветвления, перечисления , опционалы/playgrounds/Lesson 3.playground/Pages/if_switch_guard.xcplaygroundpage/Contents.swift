//Урок 3

import UIKit



//: ## Конструкция if
/*:
    if condition {
        some code
    }
 
 // где condition имеет тип Bool
 
*/
print("====КОНСТРУКЦИЯ if====")

var someNumber = 10


if 2 >= someNumber {
    
    let text = "hello"
    
    if text == "hello" {
        print(someNumber)
    }
    
    
    print(someNumber)
}

/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    }
*/
print("\n====КОНСТРУКЦИЯ else if====")

someNumber = 3

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // False
    print("The second condition is true")
} else {
    print("error")
}



let haveBigSalary = false
let haveCredits = true

// 1
if haveBigSalary {
    print("Куплю авто")
} else {
    
    if !haveCredits {
        print("возьму кредит")
    }

}



// 2
if haveBigSalary {
    print("Куплю авто")
}

if !haveCredits {
    print("возьму кредит")
}

/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    } else {
        some code
    }
 */
print("\n====КОНСТРУКЦИЯ if-else====")

//: ### Использование логических операторов
//: ### Оператор логического И
print("\n====ОПЕРАТОР ЛОГИЧЕСКОГО И====")

let num1 = 5
let num2 = 7


//: ### Оператор логического ИЛИ
print("\n====ОПЕРАТОР ЛОГИЧЕСКОГО ИЛИ====")



//: ### Оператор логического НЕ
print("\n====ОПЕРАТОР ЛОГИЧЕСКОГО НЕ====")



//: ### Тернарный оператор
print("\n====ТЕРНАРНЫЙ ОПЕРАТОР====")

// condition ? some code : some code

//let age = 39
////
//let permissionMessage: String
//if age < 65 {
//    permissionMessage = "Разрешено"
//}
//
//print(permissionMessage)
//
//let permissionMessage = age < 65 ? "Разрешено" : "Запрещено"
//
//
//print("Человеку выходить: \(permissionMessage)")



//: ## Switch statement


/*:
    switch значение для сопоставления {
    case значение 1:
        инструкция для первого значения
    case значение 2, значение 3:
        инструкция для второго и третьего значения
    default:
        инструкция, если совпадений с шаблонами не найдено
    }
*/

print("====SWITCH STATEMENT====")

// up, down
let command = "UP"

if command == "up" {
    print("Идти вверх")
} else if command == "down" {
    print("Идти вниз")
} else {
    print("ошибка")
}

let commandNumber = 7

switch commandNumber {
case 5..<6:
    print("Идти вверх")
case 6...10:
    print("Идти вниз")
default:
    print("Ошибка")
}

//: ### Соответствие диапазону

print("====СООТВЕТСТВИЕ ДИАПАЗОНУ в Switch====")




//: [Далее: Перечисления (енамы)](@next)
