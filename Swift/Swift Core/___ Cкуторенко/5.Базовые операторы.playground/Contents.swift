import UIKit

var greeting = "Hello, playground"
 var small = 7
small - 1

var number : Int? = nil
number = number ?? 0

//++small
//small++
//small

276


// 06.12.1999 - 26.10.2022 = (2022- 1999) * 365 * 86400 - (10-12) * 365 * 86400 - (26-6) * 86400 = x ( (23* 365) - ((-2)* 365) - 20) =
// x( (y(23 + 2))- 20 = x( y((2022 - 1999) - (10-12)) - (26 - 6)
// 2022- 1999 - * 365 * 86400  =
// 10-12 * 365 * 86400 =
// 26-6 * 86400 =
// посчитать колиство секунд от вашего рождения до сегоднешнего дня
// вывести на экран  количество дней месяцев прожитых
//шахматная доска 64 клетки - 1-8. посчитать какая клетка черная, какая белая

// Для выполнения задания с меньшей погрешностью  требуется переводить все в часы в году, отнимать время с года рождения и прибавлять такую же разницу с годом текущей жизни и прошедших лет

func time(dayOfBith: Int, monthOfBith: Int, yearOfBith: Int) {
    let dateNow = (dayOfNow: 28, monthOfNow: 10, yearOfNow: 2022)
    var timeNowInMonth = 12 * (dateNow.yearOfNow - yearOfBith - 1) - (12 - monthOfBith) + (dateNow.monthOfNow - 1)
    var timeNowInDay = 365*(timeNowInMonth)  + ((12 - monthOfBith) + (dateNow.monthOfNow - 1))/12*365 + dateNow.dayOfNow + 30 - dayOfBith
    var timeNowInSecond = timeNowInDay * 86400
    
    print("Я прожил \(timeNowInMonth) месяцев, \(timeNowInDay) дней , \(timeNowInSecond) секунд")
}

time(dayOfBith: 6, monthOfBith: 12, yearOfBith: 1999)


func chess(x: Int, y: Int) {
    // если x нечетная, у четная = белая - если нечетная = черная
    // если x четная, у четная = черная - если нечетная = белая
    
    if x % 2 == 0 {
        if y % 2 == 0 {
            print("Клетка черная")
        } else if  y % 2 != 0 {
            print("Клетка белая")
        }
    } else if x % 2 != 0 {
        if y % 2 == 0 {
            print("Клетка белая")
        } else if y % 2 != 0 {
            print("Клетка черная")
        }
    }
}
chess(x: 6, y: 4)
