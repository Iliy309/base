import UIKit
import Foundation
//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSfbAnnd3DvDVyB4181e33ZfDP4A_yezovpuvo49fqZ6MPsUSw/viewform)
//func g(day: ClosedRange<Int> = 1...3) {
//    print(day)
//}
//
//let r = 1...3

//g()
//: ## Home Work 5
/*:
 ### Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды в чемпионате (например по хоккею). Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядить это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Авангард - 2:1
 
 - Игра с Авангард - 2:3
 
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */

//let resultGame : Dictionary = ["Салават Юлаев" : ["3:6", "5:5"], "Авангард" : ["2:1","2:3"], "Акбарс" : ["3:3","1:2"]]
//
//
//for (nameComand , scoreComand) in resultGame {
//    for score in scoreComand{
//        print("Игра с \(nameComand) - \(score)")
//    }
//}



/*:
 ### Задание 2
Создайте функцию которая принимает в качестве аргументов день, месяц и год вашего рождения и делает расчет полных прожитых вами дней, месяцев и лет с момента вашего рождения. При вызове функции на консоль должно выходить то же самое сообщение, что и в предыдущих заданиях
 ??Выведите результат решения на консоль в виде текста (n years, n months, n days and n seconds have passed since my birth). Можете использовать свой текст. Например, если я родился 9 ноября 1980 года, а текущая дата 29.01.20, то результат будет следующим: 39 years, 470 months, 14120 days and 1219968000 seconds have passed since my birth
 "Выведите на консоль сообщение о том в каком квартале вы родились. Для этого используейте операторы сравнения, что бы сравнить номер месяца вашего рождения с одним из четрырех кварталов. Например если номер месяца больше 0 и меньше или равно 3, то это будет первый квартал. Для получения результата используйте конструкцию if"
 */

//func timeToday (day : Int, month : Int, year : Int)


//func scoreOfBirth(day : Int, month : Int, year : Int)  {
//    var yearsOfBirth = 2022 - year - 1
//    var monthOfBirth = yearsOfBirth * 12 - month + 10
//    var dayOfBirth = monthOfBirth * 365 - day + 22
//    var secondsOfBirth = dayOfBirth * 3600
//    print("Если я родился \(day).\(month).\(year) года, а текущая дата 22.10.22, то я прожил: \(yearsOfBirth) года, \(monthOfBirth) месяца, \(dayOfBirth) дней и \(secondsOfBirth) секунд ")
//
//
//}
//
//scoreOfBirth(day: 6, month: 12, year: 1999)



//func scoreOfBirth(day: Int, month: Int, year: Int) {
//    let currentDate = Date()
//    let calendar = Calendar.current
//    let dateComponents = DateComponents (year: year, month: month, day: day)
//    if let someDateTime = calendar.date(from: dateComponents) {
//        let dayPassed = calendar.dateComponents([.day], from: someDateTime, to: currentDate).day ?? 0
//        let monthPassed = calendar.dateComponents([.month], from: someDateTime, to: currentDate).month ?? 0
//        let yearPassed = calendar.dateComponents([.year], from: someDateTime, to: currentDate).year ?? 0
//        print("\(yearPassed) года \(monthPassed) месяцев \(dayPassed) дней прожито")
//    }
//}
//
//scoreOfBirth(day: 6, month: 12, year: 1999)
/*:
 ### Задание 3
 3.1 Создайте функцию, которая считает общую сумму денег, хранящихся в кошельке. В кошельке имеются купюры различного достоинства от 50 до 5000 рублей
 */

//var money = [Int]()
//money = [575, 745, 1200, 1457,3700]
//func sumWallet() {
//    var wallet = 0
//    for sumMoney in money {
//        wallet += sumMoney
//        print(wallet)
//    }
//}
//sumWallet()
//
//money.append(1_236_876)
//
//sumWallet()


//: 3.2 Заполните массив различными купюрами и подсчитайте общую сумму



/*:
 ### Задание 4
 4.1 Создайте функцию, которая определяет является ли число четным или нет. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`. Подумайте над названием функции, оно должно быть ёмким и в то же время не очень длинным
 */
func numberDivisionOnTwo (number : Int) -> Bool {
    var bool = Bool()
    if number % 2 > 0 {
        bool = false
    } else if number % 2 == 0 {
        bool = true
    }
    return bool
}

//numberDivisionOnTwo(number: 15)// ????????????????? WTF
//numberDivisionOnTwo(number: 12)
/*:
4.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение. Так же подумайте над названием функции
*/

//func numberDivisionOnTree (number: Int) -> Bool {
//    return number % 3 == 0 ? true: false
//}

//numberDivisionOnTree(number: 7)

/*:
 4.3 Создайте функцию, которая создает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен определять пользователь при вызове функции. Если хотите усложить задание, то пусть данная функция создает массив случайных чисел в заданном интервале с уникальными значениями
 */
//var numbers = [Int]()
//
//func randomNumber ( x: Int, y: Int)  {
//    for number in x...y {
//        numbers.append(number)
//
//    }
//
//}
//
//randomNumber(x: 1, y: 100)
//print(numbers)

/*:
4.4 Создайте массив чисел от *1* до *100*, используя для этого вышесозданную функцию
 */



/*:
 4.5 Создайте функции для удаления всех четных чисел из массива и чисел, которые делятся на *3*. Для определения четного числа и числа которое делится на *3* используйте ранее созданные функции из задания **4.1** и **4.2**.
 */
//func cleanNumberOfDivision (array:[Int]) {
//    var arrayVar = array
//    for (index, num) in arrayVar.enumerated() {
//        if numberDivisionOnTree(number: num) == true && numberDivisionOnTwo(number: num) == true {
//            arrayVar.remove(at: index)
//
//        }
//
//    }
//
//}

//func cleanNumberOfDivision (array:[Int]) -> [Int] {
//    var arrayVar = [Int]()
//    for num in array {
//        if numberDivisionOnTree(number: num) != true && numberDivisionOnTwo(number: num) != true {
//            arrayVar.append(num)
//        }
//    }
//   print(arrayVar)
//return arrayVar
//}
//cleanNumberOfDivision(array: [12, 125, 16, 15, 3, 7, 10, 13])
//var univarsalNumber = cleanNumberOfDivision(array: [12313,21313,456,780,231,567,67])

/*:
 4.6* Создайте функцию, параметром которой будет год(например, 1987), эта функция должна возвращать век(число) для этого года.
 
 Например, для года 1905, функция возвратит 20. Для 1899 возвратит 19
 */
//
//func ageOfCentry(year number: Int) -> Int {
//    var numberStr = String(number)
//    for (index, character) in numberStr.enumerated() {
//        var characters = Int(character)
//        if index == 0 || characters > 1 {
//
//        }
//    }
//}

/*:
 5. Создайте функцию, которая генерирует и возвращает массив из N чисел Фибоначчи, N  - это аргумент функции.
 Создайте 2 варианта этой функции:
 а) создайте функцию, используя цикл
 б) создайте рекурсивную функцию
 
 
 Пример:
 Входной параметр:
 let n = 6
 
 Результат: [0, 1, 1, 2, 3, 5]
 */
//func fibonachi (numberN: Int) -> [Int] {
//    <#function body#>
//}
