import UIKit

var greeting = "Hello, playground"





/*
 
 1.5 констант сложить чере ??
 интерполяция
 конкатенация
 2. выбрать 5 кэрактеров посчитать длину строки
 
 3. сделать строку с алфавитом abc с маленьким регистром, прогнать через фор и выяснить индекс этой буквы
 
*/

//1
func sumNumber(a: String?, b: String?, c: String?, d: String?, e: String?) {
    let sum = (Int(a) ?? 0) + (Int(b) ?? 0) + (Int(c) ?? 0) + (Int(d) ?? 0) + (Int(e) ?? 0)
    print(sum)
}

sumNumber(a: "dfdc", b: "123", c: "fvehi", d: "3123", e: "dwef")


//2
 let str = "Скоро мы получим много \u{24} и у нас  будут открыты все двери и у нас будет очень много \u{1f369} и \u{1F496}"
str.count

//3
func foundABC(letter: Character) {
    
    let strABC = "abcdefghijklmnopkrstuvwxyz"
    for (index,letters) in strABC.enumerated() {
        if letters == letter {
            print("Буква \(letter) имеет \(index) позицию")
        }
    }
}

foundABC(letter: "j")



