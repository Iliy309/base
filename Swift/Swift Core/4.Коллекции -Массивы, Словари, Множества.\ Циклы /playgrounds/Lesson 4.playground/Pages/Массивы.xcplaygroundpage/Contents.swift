import UIKit

//: # Урок 4. Типы коллекций
//: ## Массивы
//: > Хранят в себе упорядоченные, но при этом не уникальные значения одного типа






let strings = ["a", "b", "c"] // Неизменяемый массив с типом данных String


let string4 = Array<Int>() // Пустой массив с типом Int

var integers = [Int]()

integers = [4, 75, 89]// Присваивание данных массиву

integers = [4, 8] // Теперь наш массив имеет другие данные

 integers += [4] // Добавление новых значений к уже существующим

integers.append(5)// Добавление нового значения при помощи метода append

integers.insert(10, at: 0) // Добавление нового элемента по индексу

integers.removeAll()


if integers.isEmpty {
    print("пустой")
} else {
    print("не пустой")
}
//Удаление последнего элемента из массива и сохранение его в константе

 //Результат после удаления последнего элемента

 //Удаление первого элемента из массива и сохранение его в константе


 // Результат после удаления первого элемента

 // Удаление значения по индексу

 // Результат после удаления значение по индексу

 // Количество элементов массива

 // Удаление всех элементов массива

 // Обнуление массива путём присваивания ему пустого массиву



 // Замена значения по индексу 2 на новое значение

 // Результат после замены

//: ### Использование логического свойства isEmpty


//: [Next](@next)
