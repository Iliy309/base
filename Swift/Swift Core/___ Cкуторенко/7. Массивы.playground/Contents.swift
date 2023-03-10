import Cocoa

var greeting = "Hello, playground"


//let array = [100, 20, 30, 50, 123,]
//
//var sum = 0
//// Вариант когда цикл считает массив через индекс элемента
//for i in 0..<array.count {
//    sum += array[i]
//    print(sum)
//}
//
//// Вариант когда цикл считает массив через значение элемента
//for i in array {
//    sum += i
//    print(sum)
//}
////  Вариант с флажком
//var flag = 0
//for i in array {
//    sum += i
//    print(sum)
//    flag += 1
//}
//// Вариант .enumerated
//for (index,value) in array.enumerated() {
//    sum += value
//    print("\(index),  \(value)")
//}
/*
 1.Массив с 12 элементами - количество месяцев и дней в мясяце и вывести вместе + создать тюпл и  добавить туда значения +  вывести задом наперед
 Выбрать дату и посчитать количество дней до определенной даты
 2.Массив опциональных интежеров и в цикле посчитать сумму тремя разными способами опшаналбайдинг, форестанрепед,  и через ?? 0
 3.Взять строку алфавит и внести его в массив строк задомнаперед
 */

//1.

//let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
//let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
//var arrtuple = [(month: String, day: Int)]()
//for i in 0..<months.count {
////    print("\(months[i]),\(days[i])")
//    arrtuple += [(months[i], days[i])]
//}
//
//for i  in (0..<arrtuple.count).reversed() {
//    print(arrtuple[i])
//}

//2.
//func sumMunber(a: Int?,b: Int?,c: Int?,d: Int?,e: Int?, key: Int) {
//    var array = [a, b, c, d, e]
//    var sum = Int()
//    switch key {
//    case 1 :
//        for i in array {
//            if var number = i {
//                sum += number
//            } else {print("number is nil")}
//        }
//    case 2 :
//        for i in array {
//            if i != nil {
//                sum += i!
//            } else {print("number is nil")}
//        }
//    case 3 : sum = (a ?? 0) + (b ?? 0) + (c ?? 0) + (d ?? 0) + (e ?? 0)
//    default: print("problem")
//    }
//    print(sum)
//}
//sumMunber(a: 12, b: 123, c: 9898, d: nil, e: nil, key: 3)

//3
let abc = "abcdefjhigklmnopkrstuvwxyz"
var arrayabc = [String]()
for i in abc {
    arrayabc += [String(i)]
}
print(arrayabc)

for i in (0..<arrayabc.count).reversed() {
    print(arrayabc[i])
}
