import Cocoa

var greeting = "Hello, playground"
/*
 1. Энум с шахматными элементами  с цветом с колонкой и цифрой номера\ сделать ситуацию в которой черному королю матю положить фигуру в массив и  rawValue типа string . Функция что принимает свойства
 2. Массив шахматных фигур из энумов две функции - одна принимает фигуру и распечатывае rawvalue - вторая принимает и выводит где она расположена
 3. Создать функцию которая будет рисовать доску
 
 8 B = - Q - = - =
 7 = - = - = - = -
 6 - = - = Q = - =
 5 = - = - = - = -
 4 - = - = - = - =
 3 = - = - = - = -
 2 - = - = - = - =
 1 = - = - = - = -
   a b c d e f g h
     */

//enum Chess {
//    case Pawn   (color: Color, number: Number, alphabet: Alphabet)
//    case King   (color: Color, number: Number, alphabet: Alphabet)
//    case Queen  (color: Color, number: Number, alphabet: Alphabet)
//    case Rook   (color: Color, number: Number, alphabet: Alphabet)
//    case Knight (color: Color, number: Number, alphabet: Alphabet)
//    case Bishop (color: Color, number: Number, alphabet: Alphabet)
//}
enum Chess {
    case Pawn   (color:Color,number: Number,row: Row)
    case King   (color:Color,number: Number,row: Row)
    case Queen  (color:Color,number: Number,row: Row)
    case Rook   (color:Color,number: Number,row: Row)
    case Knight (color:Color,number: Number,row: Row)
    case Bishop (color:Color,number: Number,row: Row)
    
    enum Name : String{
        case Pawn
        case King
        case Queen
        case Rook
        case Knight
        case Bishop
    }
    enum Color : String{
        case White = "White"
        case Black = "Black"
    }
    enum Number : String {
        case One   = "1"
        case Two   = "2"
        case Tree  = "3"
        case Four  = "4"
        case Five  = "5"
        case Six   = "6"
        case Seven = "7"
        case Eight = "8"
    }
    enum Row : String {
        case A = "A"
        case B = "B"
        case C = "C"
        case D = "D"
        case E = "E"
        case F = "F"
        case G = "G"
        case H = "H"
    }
    
//    func initChess () {
//        switch self {
//        case .King(color: Color, number: Number, row: Row):
//            print(color: Color.r,number: Number, row: Row)
////        case .Queen:
//            print(color: Color,number: Number, row: Row)
//        case .Bishop:
//            print(color: Color, number: Number, row: Row)
//        case .Knight:
//            print(color: Color, number: Number, row: Row)
//        case .Rook:
//            print(color: Color, number: Number, row: Row)
//        case .Pawn
//            print(color: Color, number: Number, row: Row)
//        }
//    }
}
//let kingWhite = (name: Chess.Queen.rawValue,
//                color: Chess.Color.White.rawValue,
//                row: Chess.Row.D.rawValue,
//                number: Chess.Number.Seven.rawValue)
//
//let queenWhite = (name: Chess.Queen.rawValue,
//                  color: Chess.Color.White.rawValue,
//                  row: Chess.Row.D.rawValue,
//                  number: Chess.Number.Seven.rawValue)
//
//let kingBlack = (name: Chess.Name.King.rawValue,
//                 color: Chess.Color.Black.rawValue,
//                 row: Chess.Row.D.rawValue,
//                 number: Chess.Number.Seven.rawValue)

let kingBlack = (name: Chess.Name.King,
                  color: Chess.Color.Black,
                  row: Chess.Row.D,
                  number: Chess.Number.Seven)
kingBlack.color

//    king    король
//    queen    ферзь
//    rook    ладья
//    knight    конь
//    bishop    слон
//    8 - = - K - = - =
//    7 = - = Q = - = -
//    6 - = K = - = - =
//    5 = - = - = - = -
//    4 - = - = - = - =
//    3 = - = - = - = -
//    2 - = - = - = - =
//    1 = - = - = - = -
//      a b c d e f g h





var figure = [kingBlack]//[kingWhite, queenWhite, kingBlack]

var figura = "King"

for i in figure {
    if figura == i.name.rawValue {
        print(i.color, i.number, i.row)
    }
}
      
