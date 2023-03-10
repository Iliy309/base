import Cocoa
import Foundation
var greeting = "Hello, playground"

// Рекурсия- не работает
//func fact(number: Int) -> Int {
//    if number <= 1 {
//        return 1
//    }
//
//    return number * fact(number - 1)
//}
//
//fact(number: 1)
//fact(number: 2)
//fact(number: 3)
//fact(number: 4)
//fact(number: 5)


/*
 1. функция с одним клоужером ничего не принимает и ничего не возвращает и добавить  цикл с принтом 1-1- и добавить клоужер и добавить принт в него
 2. массив интежеров и сортировать по возрастанию и по убыванию
 3. принимате массив и клоужер должна возвращать интежер число. кложер принимает два инта и возвращает бул. в самой фунции создать опшанал переменную и цикл пройтись по массивам интежеров сравнить числа с этой опшанал переменной через клоужер если да, то записать в эту переменную
 4. создать произвольную строку. преобразовать в массив отсортировани \ гласные в одном порядке, согласные в одном порядке\ символы в одном порядке
 */


//func pri (n: Bool, clouser: () -> Void) {
//    if n  {
//        clouser()
//    } else {
//        for i in 1...10 {
//            print(i)
//        }
//    }
//}
//
//pri(n: true) {print("Как дела?")}
//
//func addVar (a: Int, b: Int, mathfilter: (Int, Int) -> Int) {
//    let result =  mathfilter(a, b)
//    print(result)
//}
//
//
//addVar(a: 3, b: 3) { a, b in a - b}
//addVar(a: 3, b: 6) {$0 - $1}

let array = [1,4,2,3,7,8,6]
//let array2 = ["car", "house", "pen"]
//print(array.sorted { a, b in a > b})
//print(array.sorted {$0 < $1})


// Mark:  На будущее
//func sortedF(num1: Int, num2: Int) -> Bool {
//    return num1 < num2
//}
//
//func ilter(array: [Int]) {
//    let array = array
//    for
//}

//print(array2.map({$0.count}))


//3. принимате массив и клоужер должна возвращать интежер число. кложер принимает два инта и возвращает бул. в самой фунции создать опшанал переменную и цикл пройтись по массивам интежеров сравнить числа с этой опшанал переменной через клоужер если да, то записать в эту переменную
// посчиать макси и мин
func scutorenko(array: [Int], clouser:(Int?, Int) -> Bool) -> Int {
    var opt : Int?
    for i in array {
        if clouser(opt, i) {
             opt = i
       }
    }
    return opt ?? 0
}
let test = [1,2,5,7,8,0]
let test2 = scutorenko(array:test){ $0 == nil || $0! >  $1 }

print (scutorenko(array: [1,2,5,7,8,0]) { $0 == nil || $0! <  $1 })
    
    
//array.min(by: <#T##(Int, Int) throws -> Bool#>)
//array.min
    

// 4. создать произвольную строку. преобразовать в массив отсортировани \ гласные в одном порядке, согласные в одном порядке\ символы в одном порядке


//let str = "Язык Swift поддерживает большинство стандартных операторов C, а также ряд возможностей для устранения типичных ошибок в коде. "
//func filterText(string: String) -> String {
//
//    var strArr = [Character]()
//    for i in string {
//        strArr += [i]
//    }
//
//    var text1 = String()
//    var text2 = String()
//    var text3 = String()
//
//    for v in strArr {
//        switch v {
//        case "а","я","у","ю","о","е","ё","э","и","ы":
//            text1 += String(v)
//        case "б","в","г","д","ж","й","з","к","л","м","н","п","р","с","т","ф","х","ц","ч","ш","щ":
//            text2 += String(v)
//        case ".","?","!",",",";",":","-"," " :
//            text3 +=  String(v)
//        default: break
//        }
//    }
//    var text: String = text1 + text2 + text3
//    return text
//}
//
//
//print(filterText(string: str))
//





