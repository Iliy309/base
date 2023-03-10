//: [Previous](@previous)

import Foundation

//: ### Вариативные параметры

func arithmeticMean(_ numbers: Double...) -> Double {
    var sum = 0.0
    for number in numbers {
        sum += number
    }
    return sum / Double(numbers.count)
}
//: [Next](@next)
