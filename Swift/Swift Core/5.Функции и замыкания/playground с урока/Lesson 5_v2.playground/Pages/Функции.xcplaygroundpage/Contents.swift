
import Foundation
//: # Lesson 5

//: ## Функции

/*:
 
    func nameOfFunction() {
        some code
    }
 
 */

// Пример неправильной функции
/*
let a = 5
let b = 6

func addingTwoNumbers() {
    let c = a + b
    print(c)
}

addingTwoNumbers()
*/

func addingTwoNumbers() {
    let a = 5
    let b = 6
    let c = a + b
    print(c)
}

//let someFunction = addingTwoNumbers
addingTwoNumbers()
//someFunction()

//: ### Функции с возвращаемыми значениями

/*:
    func nameOfFunction() -> Data Type {
        some code
        return some value
    }
 
 */

func addingTwoNumbersV2() -> Int {
    let a = 5
    let b = 6
  
    return a + b
}

var result = addingTwoNumbersV2()
print(result)

//: ### Функции с параметрами

/*:
    func name(argumentOne parameterOne: Data Type, argumentTwo parameterTwo: Data Type) {
        some code
    }
 */

// Функция с параметрами без аргументов
func addingTwoNumbers(a: Int, b: Int) -> Int {
    a + b
}

result = addingTwoNumbers(a: 5, b: 6)

// Функция с параметрами и аргументами
func addingTwoNumbers(number a: Int, andNumber b: Int) -> Int {
    a + b
}

addingTwoNumbers(number: 8, andNumber: 7)

func addingTwoNumbers(_ a: Int, _ b: Int) -> Int {
    a + b
}

addingTwoNumbers(7, 5)

func addingTwoNumbers(_ a: Int, and b: Int) -> Int {
    a + b
}

addingTwoNumbers(6, and: 9)

//: [Next](@next)
