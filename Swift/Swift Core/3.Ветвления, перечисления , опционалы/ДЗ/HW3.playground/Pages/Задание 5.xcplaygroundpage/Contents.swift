import Foundation

/*:
 ### Задание 5
 5.1 С помощью блоков `case` вы определяете возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо сделать простой валидатор российского номера.
 Если длина номера больше 12, то вывести: сократите номер на N символов
 Если длина номера меньше 12, то вывести: дополните номер на N символов
 Если длина 12 и номер начинается с +7, то вывести: "Номер российский"
 
 (Подсказка: с помощью case проверить длину входного номера, с помощью where - то что он начинается с "+7", в случае, если номер не российский: вывести предупреждение.
 
 
 5.2. Реализуйте ту же логику посредством if else
 
 */


//var numberOfPhone : String
//numberOfPhone = "+79302915857"
//
//
//var lenght = numberOfPhone.count
//print(lenght)
//
//switch lenght {
//case 13...:
//    print("Сократите номер на \(lenght - 12) символов")
//case ..<12:
//    print("Дополните номер на \(12 - lenght) символов")
//case 12:
//    if numberOfPhone[numberOfPhone.startIndex...numberOfPhone.index(after: numberOfPhone.startIndex)] == "+7" {
//        print("Russian number")
//    } else {
//        print("Its not a Russian number")
//    }
//default:
//    print("OSHIBKA")
//
//
//}

var numberOfPhone : String
numberOfPhone = "+79302915857"

var numberCharacters = 12
var numberPrefix = "+7"

switch numberCharacters {
case numberOfPhone.count where numberOfPhone.starts(with: numberPrefix):
    print("Russian number")
case numberOfPhone.count...:
    print("Delete of \(numberOfPhone.count - 12)characters")
case ..<numberOfPhone.count:
    print("Supplement of \(12 - numberOfPhone.count) characters")
default:
    break
}
    
    
//: [Ранее: Задание 4](@previous)  |  задание 5 из 6  | [Далее: Задание 6](@next)



//var number = "89999999990"
//
//let numberCount = number.count
//
//var array: [String] = []
//for i in number {
//    array.append(String(i))
//}
//
//switch numberCount {
//case 11:
//    if array[0] == "8" {
//        print("Russian number")
//    } else {
//        fallthrough
//    }
//case 13...:
//    print("Сократите номер на \(numberCount - 12) символов")
//case ...11:
//    print("Дополните номер на \(12 - numberCount) символов")
//case 12:
//    //First option
//    if array[0] == "+" && array[1] == "7" {
//        print("Russian number")
//    } else {
//        print("Its not a Russian number")
//    }
//
//    //Second option
//    if number.removeFirst() == "+" && number.removeFirst() == "7" {
//        print("Russian number")
//    } else {
//        print("Its not a Russian number")
//    }
//
//    //Third option
//    if number[number.startIndex...number.index(after: number.startIndex)] == "+7" {
//        print("Russian number")
//    } else {
//        print("Its not a Russian number")
//    }
//
//default: break
//}
//
//extension String {
//    //subscript....
//}
