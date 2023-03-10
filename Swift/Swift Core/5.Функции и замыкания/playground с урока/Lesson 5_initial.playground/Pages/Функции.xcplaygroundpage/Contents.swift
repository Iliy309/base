
import Foundation
//: # Lesson 5

//: ## Функции

/*:
 
    func nameOfFunction() {
        some code
    }
 
 */



//: ### Функции с возвращаемыми значениями

/*:
    func nameOfFunction() -> Data Type {
        some code
        return some value
    }
 
 */

func getSum() -> Int {
    let number1 = 7
    let number2 = 8
    
    return number1 + number2
}


let sum = getSum()

print("сумма \(sum)")




//: ### Функции с параметрами

/*:
    func name(argumentOne parameterOne: Data Type, argumentTwo parameterTwo: Data Type) {
        some code
    }
 */

// Функция с параметрами без меток аргументов (argument label)
func addingTwoNumbers(number1: Int, number2: Int) -> Int {
    return number1 + number2
}

let sum2 = addingTwoNumbers(number1: 6, number2: 7)


let sum6 = addingTwoNumbers(number1: 6, number2: 7)

print(sum2)

let sum3 = addingTwoNumbers(number1: 100000, number2: 7)

print(sum3)



// Функция с параметрами и метками аргументов(argument label)


func addingTwoNumbersV2(_ number1: Int, _ number2: Int) -> Int {
    return number1 + number2
}

func contains(number: Int, in array: [Int]) -> Bool {
    return array.contains(number)
}


contains(number: 7, in: [7, 675, 68])

//print(sum4)

//: [Next](@next)
