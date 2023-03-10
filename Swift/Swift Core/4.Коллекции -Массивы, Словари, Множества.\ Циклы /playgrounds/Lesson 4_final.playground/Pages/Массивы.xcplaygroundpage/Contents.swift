import UIKit

//: # Урок 4. Типы коллекций
//: ## Массивы
//: > Хранят в себе упорядоченные, но при этом не уникальные значения одного типа

let strings = ["a", "b", "c"] // Неизменяемый массив с типом данных String

let chartacters: [Character] = ["a", "b", "c"] // Неизменяемый массив с типом данных Character

var integers: [Int] = [] // Пустой массив с типом Int

var anotherIntegers = [Int]()

integers = [1, 2, 3] // Присваивание данных массиву

integers = [4, 5, 6] // Теперь наш массив имеет другие данные

integers += [7, 8] // Добавление новых значений к уже существующим              

integers.append(9) // Добавление нового значения при помощи метода append

integers.insert(1, at: 0) // Добавление нового элемента по индексу

let someIntegers = [12, 17]

anotherIntegers = integers + someIntegers // Создание нового массива, путём объеденения двух других массивов

anotherIntegers.removeLast() //Удаление последнего элемента из массива и сохранение его в константе

anotherIntegers //Результат после удаления последнего элемента

let firstValueFromArray = anotherIntegers.removeFirst() //Удаление первого элемента из массива и сохранение его в константе

firstValueFromArray

anotherIntegers // Результат после удаления первого элемента

anotherIntegers.remove(at: 1) // Удаление значения по индексу

anotherIntegers // Результат после удаления значение по индексу

anotherIntegers.count // Количество элементов массива

anotherIntegers.removeAll() // Удаление всех элементов массива

integers = [] // Обнуление массива путём присваивания ему пустого массиву

integers = [10, 20, 40]

integers[2] = 30 // Замена значения по индексу 2 на новое значение

integers // Результат после замены

//: ### Использование логического свойства isEmpty

if !integers.isEmpty {
    print(integers)
}

//: [Next](@next)
