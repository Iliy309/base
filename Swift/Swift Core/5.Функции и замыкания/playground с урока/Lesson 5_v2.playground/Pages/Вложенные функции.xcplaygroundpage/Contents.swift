//: [Previous](@previous)

import Foundation

//: ### Вложенные функции


func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { input + 1 }
    func stepBackward(input: Int) -> Int { input - 1 }
    return backward ? stepBackward : stepForward
}




/*
var currentValue = -5

func stepBackward(input: Int) -> Int {
    input - 1
}

func stepForward(input: Int) -> Int {
    input + 1
}

while currentValue != 0 {
    if currentValue > 0 {
        print("\(currentValue)...")
        currentValue = stepBackward(input: currentValue)
    } else {
        print("\(currentValue)...")
        currentValue = stepForward(input: currentValue)
    }
}
*/

var currentValue = 4

var moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print("\(currentValue)...")
    currentValue = moveNearerToZero(currentValue)
}

print("zero!")

//: [Next](@next)
