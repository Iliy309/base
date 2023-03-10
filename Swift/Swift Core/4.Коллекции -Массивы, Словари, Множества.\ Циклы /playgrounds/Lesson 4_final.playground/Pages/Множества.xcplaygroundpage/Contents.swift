//: [Previous](@previous)

import Foundation


//: ## Множества
//: > Хранят в себе неупорядоченные, но при этом уникальные значения одного типа


var characters: Set<Character> = [] // Создание пустого множества

var integers = Set<Int>()

var strings: Set = ["a", "a", "a", "b", "c"] // Создание множества с типом стринг

strings.insert("Абрикос") // Добавление нового элемента в множество

strings

strings.contains("Картофель") // Проверка на наличие определенного элемента во множестве

strings.sorted() // Сортировка с использованием метода sorted() для последующей итерации по множеству

let array = strings.sorted(by: >)

array.sorted()


//: #### Рассмотрим внутреннюю работу массивов и множеств

//: [Next](@next)
