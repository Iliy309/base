//: [Previous](@previous)

import Foundation

//: ## Словари
//: > Неупорядоченные коллекции, которые хранят в себе пары «ключ-значение». Тип ключа словаря может отличаться от типа значения. При этом сами ключи и значения должны быть одного типа


 //Полная форма записи словаря
var carsWashQueue = Dictionary<String, String>()


 // Сокращенная форма записи словаря
var carsWashQueue1 = [String: String]()

 // Инициализация словаря с данными
carsWashQueue = [
    "Y73NJB": "BMW X6",
    "GHGHh778": "Lada Vesta"
]

var namesQuantity = [String: Int]()



 // Изменение значения для ключа

 // Изменение значения с сохранением старого значения
let oldValue = carsWashQueue.updateValue("Gray BMW X6", forKey: "GHGHh778")




 // Добавление новой пары ключ-значение
carsWashQueue["TUHBJKN"] = "Lada niva"
carsWashQueue
 // Удаление значения по ключу с сохранением значения

carsWashQueue.removeValue(forKey: "TUHBJKN")


//: [Next](@next)

