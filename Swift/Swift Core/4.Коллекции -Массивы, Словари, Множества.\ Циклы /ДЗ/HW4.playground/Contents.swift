import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSd1u0QO7NUHombGhJkB0r0o8rsfGvUuVJmMbfWd-2nCbhOaAA/viewform)

//: ## Home Work 4

/*:
 ### Задание 1
 1.1 Пользователь открывает вклад (deposit) в банке на 5 лет на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия (period) вклада.  Для решения данной задачи используйет цикл for-in. Примечание: сумма вклада увеличивается с каждым годом и процент нужно считать уже от увелеченной суммы.
 
 1.2 Выведите результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...>"
 */
//let time = 5
//var deposite = 500_000.0
//var rate  = 11
//var profit = 500_000.0
//
//
//for _ in 1...time {
//    var rateInYers = Double(rate)/100.0
//    profit = (profit * rateInYers) + profit
//    print(profit)
//}
//
//print("Сумма вклада через \(time) лет увеличится на \(Int(profit) - Int(deposite)) и составит \(Int(profit))")



/*:
 ### Задание 2
 2.1 Создайте целочисленные переменные `base` и `power` с любым значениями на ваше усмотрение.
 
 2.2 При помощи цикла `for in` возведите переменную `base` в степень `power` и присвойте результат переменной `result`
 
 2.3 Выведите результат на консоль в следующем виде: «<…> в <…> степени равно <…>»
 */
//var base = 11
//var power = 5
//var result = 1
//
//
//for _ in 1...power{
//    result *= base
//    print("\(base) в \(power) степени равно \(result)")
//}

/*:
 ### Задание 3
 3.1 Создайте целочисленный массив данных с любым набором чисел.
*/
var array = [1,2,21412,124124,123123,213,5257,123123,878]


//: 3.2 Выведите на консоль все четные числа из массива
//for x in array {
//    if x % 2 == 1 {
//        print("\(x) nechotnoe")
//    }
//    if x % 2 < 1 {
//        print("\(x) чОтное")
//    }
//    if x != x {
//        print("Her tebe")
//    }
//}


//: 3.3 Используя оператор Continue выведите на консоль все нечетные числа из массива. Оператор continue предназначен для перехода к очередной итерации, игнорируя следующий за ним код. Т.е. вам нужно выполнить проверку на четность числа, и если оно оказалось четным перейти к следующей итерации.



//: ### Задание 4
//: 4.1 Создайте цикл (интревал можно задать от 1 до 10) в котором будет случайным образом вычисляться число в пределах от 1 до 10. Если число будет равно 5, выведите на коносль сообщение с номером итерации, например (Что бы выпало число 5 понадобилось 3 итерации) и остановите цикл. Для остановки цикла используйте оператор breack. Оператор break предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется.
//let randomNumber = Int.random(in: 1...10)
//var c = 0
//for x in -1...5 {
//    c += 1
//    if x == 5 {
//        break
//        print("Чтобы выпало число 5 понадобилось \(c) итераций")
//    }
//}


/*:
 ### Задание 5
  5.1 На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на 1. Определите при помощи цикла, через сколько дней она заберетсья на столб. Подумайте над тем, какой цикл использовать в этой ситуации.
 */
let height = 10
let vDay = 2
let vNight = 1

var distance = 0
var numberOfDay = 0
var isDay = true


while distance < height {
    if isDay {
        distance += vDay
        numberOfDay += 1
        isDay = false
    } else {
        distance -= vNight
        isDay = true
    }
}
print(numberOfDay)


/*:
 ### Задание 6
 Определить сложность алгоритма (с описанием рассуждения)
 
 
 */
// Входные данные, которые могут изменяться
let items = ["Раз", "Два"]


// Начало алгоритма
print("Привет")

for _ in items {
    for item1 in items {
        print("subitem 1 \(item1)")
    }
    for item2 in items {
        print(item2)
    }
}

print("36")
// Конец алгоритма


/*:
 ### Задание 7. От Google. Не обязательно решать.
 Дан массив 'a', который содержит целые числа в диапазоне от 1 до 'a.count'.
 Найти повторяющееся число в массиве для которого второе повторение имеет минимальный индекс.
 
 Другими словами, если в массиве есть более чем 1 дублирующееся числа, вывести то число, у которого второе повторение имеет индекс в массиве меньше, чем индекс второго повторения другого числа.
 
 Если повторяющихся чисел нет, то  ничего не выводить в консоль
 
 ПРИМЕР:
 
 Для a = [2, 1, 3, 5, 3, 2], вывод в консоль должен быть "3".

 В массиве есть два числа, которые дублируются: числа 2 и 3. Второе поторение 3 имеет меньший индекс, чем второе повторение 2, значит ответ: 3.
 
 
 Для a = [2, 2], вывод будет 2;

 Для a = [2, 4, 3, 5, 1],вывода не будет.
 
 */


