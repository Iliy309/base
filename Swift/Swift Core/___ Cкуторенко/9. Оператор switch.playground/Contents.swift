import Cocoa

var greeting = "Hello, playground"
/*
 1. создать строку 200 символов + цикл и в нем свич\ посчитать количество символов гласных, согласных, запятых и знаков
 2. создать свитч  и принять возраст выводить текст
 3. студент  фамилия. имя. отчество имя начинает с а или о\ если его отчество начинает с в и д  по имени и отчеству\ если фамили с е и з только по фамилии
 4.морской бой  10*10. создать свитч получает тюпл поинт с координатами - выдать ранил, мимо, убил
 */


//1
//var str = "Еврокомиссар по вопросам юстиции и соблюдения верховенства права Дидье Рейндерс считает, что замороженные золотовалютные резервы Москвы объемом €300 млрд можно сохранять в качестве гарантии до тех пор, пока не начнется восстановление Украины с участием России."
//str.count
//let abcSiglacnue : [Character] = ["а","у","ю","о","е","ё","э","и","ы"]
//var sumVowels = Int()
//var sumConsonants = Int()
//var sumSigns = Int()
//for i in str {
//    switch i {
//    case "а","я","у","ю","о","е","ё","э","и","ы":
//            sumVowels += 1
//    case "б","в","г","д","ж","й","з","к","л","м","н","п","р","с","т","ф","х","ц","ч","ш","щ":
//            sumConsonants += 1
//    case ".","?","!",",",";",":","-"," " :
//            sumSigns += 1
//    default:
//            break
//    }
//}
//print(sumVowels)
//print(sumConsonants)
//print(sumSigns)
//
//
////2
//func hi(age: Int) {
//    switch age {
//        case 0...12: print("Привет малыш")
//        case 12...17: print("Привет школьник")
//        case 17...25: print("Привет Парень")
//        case 25...63: print("Привет мужки")
//        case 63...: print("Привет старик")
//    default: break
//    }
//}
//
//hi(age: 12)
//hi(age: 20)
//hi(age: 45)
//hi(age: 100)
//hi(age: 101)
//

//3  студент  фамилия. имя. отчество имя начинает с а или о\ если его отчество начинает с в и д  по имени и отчеству\ если фамили с е и з только по фамилии



//func student(name: String, surname: String, patronymic: String) {
//    let student = (name: name, surname: surname, patronymic: patronymic)
//    switch student {
//    case (name, _ , _ ) where name.hasPrefix("А") || name.hasPrefix("О"):
//        print("Привет \(name)")
//    case ( _ , surname , _ )  where surname.hasPrefix("Е") || surname.hasPrefix("З"):
//        print("Привет \(surname) ")
//    case ( _ , _ , patronymic)  where patronymic.hasPrefix("А") || patronymic.hasPrefix("Д"):
//        print("Привет \(name) \(patronymic)")
//
//    default: print("nedadumal")
//    }
//}
//student(name: "Илья", surname: "Загуменный", patronymic: "Дмитриевич")
//student(name: "Антон", surname: "Абрамов", patronymic: "Генадьевич")
//student(name: "Мария", surname: "Лосева", patronymic: "Александрова")

//4 морской бой  10*10. создать свитч получает тюпл поинт с координатами - выдать ранил, мимо, убил
/*
   1 2 3 4 5 6 7 8 9 10
 1 - - - - - - - - - -
 2 - - - * - - - * - -
 3 - - - - - - - * - -
 4 - - - - - - - * - -
 5 - - - - - * - - - -
 6 - - - - - * - - - -
 7 - - - - - - - - - -
 8 - - - - - - - - - -
 9 - * * * * * - - - -
 10- - - - - - - - - -
 */

//    Удар
func oceanVar(x: Int, y: Int) {
    var point = String(x) + String(y)
    
    
    // Карабли
    //var ship = ("42")
    var shipTreeDeck = ["82", "83", "84"]
    //var shipTwoDeck = ["65", "66"]
    //var shipFiveDeck = ["29", "39", "49","59", "69"]
    shipTreeDeck.isEmpty
    
    for (i,v) in shipTreeDeck.enumerated() {
        switch point {
        case v where shipTreeDeck.isEmpty: print("Убил")
        case v :
            shipTreeDeck.remove(at: i)
            print("Папал \(shipTreeDeck)")
        default:print("Мимо")
        }
    }
    
}
oceanVar(x: 8, y: 2)




