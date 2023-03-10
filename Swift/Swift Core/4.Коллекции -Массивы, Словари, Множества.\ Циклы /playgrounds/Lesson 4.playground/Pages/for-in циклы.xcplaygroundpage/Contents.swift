//: [Previous](@previous)

import Foundation

//: ## For-in циклы

/*:
 
    for counter in lower…upper {
        some code
    }
 
 */

var sum = 0
for value1 in 1... {
    for value2 in 1...5 {
        print(value2)
    }
}


//print(sum)

// 1 + 2 + 3 = 6
//: ### Итерация по массиву

let fruits = [
    "apple", "banana", "pineapple",
    "apple", "pear", "apple", "plum",
    "apricot", "apple"
]


var applesCount = 0

for fruit in fruits {
    if fruit == "apple" {
        applesCount += 1
    }
}


print(applesCount)
//: ### Итерация по словарю

let legsContDict = ["spider": 8, "bug": 6, "cat": 4]


for (key, value) in legsContDict {
    print("\(key) \(value)")
}
//: ### Итерация по тексту

for char in "привет" {
    for char in "привет" {
        print(char)
    }
}
//: [Next](@next)
