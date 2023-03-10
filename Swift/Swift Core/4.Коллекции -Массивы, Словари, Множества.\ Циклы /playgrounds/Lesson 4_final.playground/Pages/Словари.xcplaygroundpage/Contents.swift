//: [Previous](@previous)

import Foundation

//: ## Словари
//: > Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа

var someStringDictionaty = Dictionary<String, String>() //Полная форма записи словаря
var morStringDictionary: Dictionary<String, String> = [:]
var anotherSomeDictionary = [Int: String]() // Сокращенная форма записи словаря

var carWashQueue: [String: String] = [:]

carWashQueue = ["E095BA": "Red Toyota", "X127MT": "White BMW X6"] // Инициализация словаря с данными

carWashQueue["E095BA"] = "Rad Camry" // Изменение значения для ключа

carWashQueue

let oldValue = carWashQueue.updateValue("Gray BMW X6", forKey: "X127MT") // Изменение значения с сохранением старого значения

carWashQueue

carWashQueue["M456PA"] = "Green Niva" // Добавление новой пары ключ-значение

carWashQueue

carWashQueue["E095BA"] = nil // Удаление значения по ключу с сохранением значения

carWashQueue.removeValue(forKey: "X127MT")


//: [Next](@next)

