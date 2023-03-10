//: ## Базовые операторы

import UIKit

//: ### Арифметические операторы:
var number1 = 9
var number2 = 4

number1 + number2
number1 - number2
number1 * number2
number1 / number2
//: ### Оператор остатка от деления:
number1 % number2
-number1 % number2
number1 % -number2

//: ### Оператор присваивания:
number1 = 10

number1 += 23
number1 -= 23
number1 *= 23
number1 /= 23
//: ### Операторы сравнения:
let a = 0
let b = 5

a == b // true
a != b // false
a > b // false
a < b // false
a >= b // true
a <= b // true

// Операторы диапазона

0...3 ~= 4

if 0...3 ~= 3 {
    print("PNX")
} else if 4...5 ~= 5 {
    print("Hello")
}
//: ### Оператор логического НЕ:
let accessDeniedMessage = "ACCESS DENIED"
let welcomeMessage = "Welcome!"

let allowEntry = false

if !(a == 0) {
    print(welcomeMessage)
}


//: ### Оператор логического И:
// человек ввел правильный код
let enteredDoorCode = true
// человек прошел проверку сетчатки глаза
let passedRetinaScan = true
// айосник?
let isIOSDeveloper = true

if enteredDoorCode && passedRetinaScan && isIOSDeveloper {
    print(welcomeMessage)
}
//: ### Оператор логического ИЛИ:
//  Есть ли ключ
let hasDoorKey = false
// Знает спецпароль
let knowsOverridePassword = false

if hasDoorKey || knowsOverridePassword {
    print(welcomeMessage)
}

let isValidUser = enteredDoorCode && passedRetinaScan && isIOSDeveloper
let isHack =  hasDoorKey || knowsOverridePassword

if isValidUser || isHack {
    print(welcomeMessage)
}

//: ### Строки и символы:
let name: String
let name1 = String()

//: ### Конкатенация строк:
let text = "iOS Developer " + String(7)
print(text)
//: ### Интерполяция строк

print("iOS Developer \(76) abcd")


