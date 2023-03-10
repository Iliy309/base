//: [Previous](@previous)

import Foundation

//: ### Вложенные функции
func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    func stepForward(number: Int) -> Int { number + 1 }
    func stepBackward(number: Int) -> Int { number - 1 }
    
    return backward ? stepBackward : stepForward
}





var currentValue = 5


let moveNearerToZero = chooseStepFunction(backward: currentValue > 0)

while currentValue != 0 {
    print(currentValue)
    currentValue = moveNearerToZero(currentValue)
}

print("zero")
//: [Next](@next)
