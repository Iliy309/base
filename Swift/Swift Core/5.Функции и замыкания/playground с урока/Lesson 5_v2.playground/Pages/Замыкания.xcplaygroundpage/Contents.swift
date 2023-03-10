//: [Previous](@previous)

import Foundation

//: ### Функции как замыкания


//: Отбираем числа меньше заданного значения


func filterLessThanValue(value: Int, numbers: [Int]) -> [Int] {

    var filteredSetOfNumbers = [Int]()

    for number in numbers {
        if number < value {
            filteredSetOfNumbers.append(number)
        }
    }
    return filteredSetOfNumbers
}

let someValue = 5
let numbers = [5, 8, 20, 13, 1, 4, 3, 6]

filterLessThanValue(value: someValue, numbers: numbers)



//: Отбираем числа больше заданного значения


func filterGreaterThanValue(value: Int, numbers: [Int]) -> [Int] {

    var filteredSetOfNumbers = [Int]()

    for number in numbers {
        if number > value {
            filteredSetOfNumbers.append(number)
        }
    }
    return filteredSetOfNumbers
}

filterGreaterThanValue(value: someValue, numbers: numbers)



//: Функция для отбора чисел, относительно заданного значения


func filterWithPredicateClosure(value: Int, numbers: [Int], closure: (Int, Int) -> Bool) -> [Int] {
    var filterNumbers = [Int]()

    for number in numbers {
        if closure(number, value) {
            filterNumbers.append(number)
        }
    }
    return filterNumbers
}

filterWithPredicateClosure(value: 1, numbers: [1,2]) { a, b in
    a == b
}

//Svoya
func twoInts(value: Int, secondValue: Int, closure: (Int, Int) -> Bool) {
    if closure(value, secondValue) {
        print("Done")
    } else {
        print("Not done")
    }
}

twoInts(value: 1, secondValue: 1) { a, b in
    a == b
}

twoInts(value: 2, secondValue: 2) {}

//: Функция для отбора числе меньше указанного значения

func lessThanValue(number: Int, value: Int) -> Bool {
    number < value
}

//: Функция для отбора числе больше указанного значения

func greaterThanValue(number: Int, value: Int) -> Bool {
    number > value
}

//: Отбор чисел меньше указанного значения

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: lessThanValue)

//: Отбор чисел больше указанного значения
filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: greaterThanValue)
//: ### Замыкающие выражения

/*:
 
 Замыкания бывают трех видов:
 
 - Глобальные функции — это замыканиями, у которых есть имя и которые не захватывают никакие значения.
 
 - Вложенные функции — это замыканиями, у которых тоже есть имя, но при этом они могут использовать или захватывать значения из родительской функции.
 
 - Замыкающие выражения - это безымянные функции, которые написаны в облегченном синтаксисе, которые могут захватывать значения из окружающего контекста
 
 */


/*:
    { (параметры) -> тип результата in
        тело замыкающего выражения
    }
 */



/*:
 Изпользование замыкания в качестве аргумента
 
 Отбор чисел меньше указанного значения
 */

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { (number: Int, value: Int) -> Bool in
                            return number < value
})

//: Отбор чисел больше указанного значения

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { (number: Int, value: Int) -> Bool in
                            return number > value
})

//: Вывод типа из контекста

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { (number, value) in
                            return number < value
})

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { (number, value) in
                            return number > value
})

//: Неявные возвращаемые значения из замыканий с одним выражением

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { (number, value) in number < value })

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { (number, value) in number > value })

//: Сокращенные имена параметров

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { $0 < $1 })

filterWithPredicateClosure(value: someValue,
                           numbers: numbers,
                           closure: { $0 > $1 })

//: Последующее замыкание

filterWithPredicateClosure(value: someValue, numbers: numbers) { $0 < $1 }
filterWithPredicateClosure(value: someValue, numbers: numbers) { $0 > $1 }

//: Операторные функции

filterWithPredicateClosure(value: someValue, numbers: numbers, closure: <)
filterWithPredicateClosure(value: someValue, numbers: numbers, closure: >)
