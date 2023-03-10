import Cocoa

var greeting = "Hello, playground"
    /*
     1. создать функцию при вызове выдает юникод символ  пара и создать один принт в котором вызывались две функции
     2. принимает два параметра строка и сивол вводить слово белое и черное
     3. функция которая принима массив и возвращает массив  в обратном порядке \ функция в функции
     4. функция принимает массив и меняет его в обратном порядке  inout
     5. принимает строку и возвращает строку и будут убраны знаки припинания, все гласные буду заменены в заглавные, все согасные в маленькие, а цифры на  числительсные
     */


// 1

//func heart() {
//    print("heart")
//}
//heart()
//func love() {
//    print("love")
//}
//love()
//
//func heartLove() {
//    print("\(heart()) \(love())")
//}
//
//heartLove()

//func chess(num: String, abc: Character) -> String {
//    
//    var dictChess = [String: Bool]()
//    let chessAlphabet = ["A", "B", "C", "D", "E", "F", "G", "H"]
//    let chessNumber = [1, 2, 3, 4, 5, 6, 7, 8]
//    
//    
//    for indexNum in 0..<chessNumber.count {
//        for indexAbc in 0..<chessAlphabet.count {
//            var stringKey = String(chessNumber[indexNum]) + chessAlphabet[indexAbc]
//            if chessNumber[indexNum] % 2 == 0 {
//                if (indexAbc + 1) % 2 == 0 {
//                    dictChess[stringKey] = false
//                } else if  (indexAbc + 1) % 2 != 0 {
//                    dictChess[stringKey] = true
//                }
//            } else if chessNumber[indexNum] % 2 != 0 {
//                if (indexAbc + 1) % 2 == 0 {
//                    dictChess[stringKey] = true
//                } else if (indexAbc + 1) % 2 != 0 {
//                    dictChess[stringKey] = false
//                }
//            }
//        }
//    }
//    
//    print(dictChess)
//    print(dictChess.count)
//    var chess = String(num) + String(abc)
//    return dictChess[chess]! ? "Белая": "Черная"
//    
//}
//chess(num: "3", abc: "D")

//4

//let reversedArray: [Int] = [4, 8, 15, 16, 23, 42].reversed()
//
//func arrayReversed (num1: Int, num2: Int, num3:  Int, num4: Int) -> [Int] {
//    var array: [Int] = [num1, num2, num3, num4].reversed()
//    return array
//}


//5. принимает строку и возвращает строку и будут убраны знаки припинания, все гласные буду заменены в заглавные, все согасные в маленькие, а цифры на  числительсные

func filterText(string: String) -> String {
    
    var strArr = [Character]()
//    var vowels = Int()
//    var consonants = Int()
//    var signs = Int()
    var text = String()
    
    for i in string {
        strArr += [i]
    }
    
    for v in strArr {
        switch v {
        case "а","я","у","ю","о","е","ё","э","и","ы":
            text += String(v.uppercased())
        case "б","в","г","д","ж","й","з","к","л","м","н","п","р","с","т","ф","х","ц","ч","ш","щ":
            text += String(v.lowercased())
        case ".","?","!",",",";",":","-"," " :
            text += "_"
        default: text += String(v)
        }
    }
   return text
}
filterText(string: "Еврокомиссар по вопросам юстиции и соблюдения верховенства права Дидье Рейндерс считает, что замороженные золотовалютные резервы Москвы объемом €300 млрд можно сохранять в качестве гарантии до тех пор, пока не начнется восстановление Украины с участием России.")
