import Cocoa

var greeting = "Hello, playground"
/*
 1. тип шахматная доска  при обращении через координату возвращала  белый-черный цвет энум
 2. крестики нолики - энумчики. Обращение через сабскрипт \\
*/


    
   
struct Tablemultiplayer {
    var number : Int
    
    subscript (index: Int) -> Int {
        return number * index
    }
}
var number = Tablemultiplayer(number: 3)
number[3]


@propertyWrapper
struct TwentyOrLess {
    private var number = 0
    var wrappedValue : Int{
        get {return number}
        set {number = min(newValue, 20) }
    }
}

struct SmallRectangle {
    @TwentyOrLess var  height : Int
    @TwentyOrLess var weight : Int
}

var rect = SmallRectangle()
rect.weight //0
rect.height //0

rect.weight = 21
rect.height = 21

rect.height //20
rect.weight //20


