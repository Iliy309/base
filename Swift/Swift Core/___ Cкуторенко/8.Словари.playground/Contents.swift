import Cocoa

var greeting = "Hello, playground"

/*
 1. dict = [name : rating]   повысить оценку.  удалить студентов.  посчяитать общий бал и средний бал
 2. dict month: day , вывести знеачения цикл и тпюлы и значения
 3. шахматы адресячейки- ключ - значения булл
 */



////1
//
//var dictStudens = ["Илья Загуменный" : 5, "Данил Горинов" : 4, "Слава Данилов": 3, "Влад Огнев": 2, "Антон Абрамов": 5]
//
//// Двое студентов пересдали
//dictStudens.updateValue(4, forKey: "Слава Данилов")
//dictStudens.updateValue(3, forKey: "Данил Горинов")
//
//// Cтудент ливнул
//dictStudens.removeValue(forKey: "Влад Огнев")
//print(dictStudens)
//
//// Общий балл и средний балл
//var sumAll = Int()
//for key in dictStudens.keys {
//    sumAll += dictStudens[key] ?? 0
//}
//print(sumAll)
//
//var average = Float()
//for key in dictStudens.keys {
//    average += Float((dictStudens[key] ?? 0) / dictStudens.count)
//}
//print(average)
//
//
////2
//
//let dictMonthOfDay = ["Jun": 31, "Feb": 28, "Mar": 31, "Apr": 30, "May": 31, "Jul": 30, "July": 31, "Aug": 31, "Sep": 30, "Okt": 31, "Nv": 30, "Dec": 31]
//
//for key in dictMonthOfDay.keys {
//    print(" В месяце \(key) столько \(dictMonthOfDay[key] ?? 0) дней")
//}
//
//for (key, value) in dictMonthOfDay {
//    print("В месяце \(key) столько \(value) дней")
//}


// 3 true = white; false = black. Если

var dictChess = [String: Bool]()
let chessAlphabet = ["A", "B", "C", "D", "E", "F", "G", "H"]
let chessNumber = [1, 2, 3, 4, 5, 6, 7, 8]


for indexNum in 0..<chessNumber.count {
    for indexAbc in 0..<chessAlphabet.count {
        var stringKey = String(chessNumber[indexNum]) + chessAlphabet[indexAbc]
        if chessNumber[indexNum] % 2 == 0 {
            if (indexAbc + 1) % 2 == 0 {
                dictChess[stringKey] = false
            } else if  (indexAbc + 1) % 2 != 0 {
                dictChess[stringKey] = true
            }
        } else if chessNumber[indexNum] % 2 != 0 {
            if (indexAbc + 1) % 2 == 0 {
                dictChess[stringKey] = true
            } else if (indexAbc + 1) % 2 != 0 {
                dictChess[stringKey] = false
            }
        }
    }
}

print(dictChess)
print(dictChess.count)
dictChess ["6C"]



