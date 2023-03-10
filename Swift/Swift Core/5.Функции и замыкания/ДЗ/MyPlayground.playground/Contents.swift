import UIKit

var greeting = "Hello, playground"


func scoreOfBirth(day: Int, month: Int, year: Int)  {
    var yearsOfBirth = 2022 - year
    var monthOfBirth = yearsOfBirth * 12 - month - 
    var dayOfBirth = monthOfBirth * 365 - day
    var secondsOfBirth = dayOfBirth * 3600
    print("Если я родился \(day).\(month).\(year) года, а текущая дата 22.10.22, то я прожил: \(yearsOfBirth) лет, \(monthOfBirth) месяцев, \(dayOfBirth) дней и \(secondsOfBirth) секунд ")
}

