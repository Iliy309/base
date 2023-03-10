import Foundation

/*:
 ### Задание 6
 6.1 Создайте перечисление `CalculationType`, содержащее четыре математических действия — *сложение*, *вычитание*, *умножение* и *деление* (если не знаете английские наименования — [translate.google.com](http://translate.google.com))
 */
enum CalculationType : String {
    case additional = "сложение"
    case subtraction = "вычитание"
    case multiplication = "умножение"
    case division = "деление"
}
let numberOne  = 3
let numberTwo  = 3
let calculationType :CalculationType = .division
var result = numberOne
switch calculationType {
case .additional:
    result += numberTwo
case .subtraction:
    result -= numberTwo
case .multiplication:
    result *= numberTwo
case .division:
    numberTwo != 0 ? result /= numberTwo : print("error")
}

print(" Result \(calculationType.rawValue) \(numberOne) and \(numberTwo) equals \(result)")
//switch calculationType {
//case .additional :
//    print("Result additional \(numberOne)  and \(numberTwo) equals \(numberOne + numberTwo)")
//case .subtraction :
//    print("result subtraction \(numberOne) and \(numberTwo) equals \(numberOne - numberTwo)")
//case .multiplication :
//    print("result multiplication \(numberOne) and \(numberTwo) equals \(numberOne * numberTwo)")
//case .division :
//    print ("Result division \(numberOne) and \(numberTwo) equals \(numberOne / numberTwo)")
//}


/*: 6.2 Создайте три константы: число один, число два и тип математической операции(CalculationType).
 
 В зависимости от значения переменной типа `CalculationType` выполните соответствующую математическую операцию с константами и выведите(print) результат. Для перебора всех возможных результатов используйте конструкцию `switch`. Пример вывода программы: "Результат сложения 6 и 8 равен 14"
 
 
 
 

 6.3 Создайте перечисление `CurrencyUnit` со следующими членами: `rouble`, `dollar`, `euro`.


 6.4 Внутри перечисления `CurrencyUnit` создайте еще одно перечисление `DollarCountries`, в котором содержится перчень стран, национальной валютой которых является доллар (USA, Canada, Australia)

 6.5 Добавьте в кейс `dollar` ассоциативное значение DollarCountries.

 6.6 Создайте константу типа CurrencyUnit, задайте ей значение доллара Канады.
 */
enum CurrencyUnit {
    case rouble
    case dollar(national :DollarCountries)
    case euro
    enum DollarCountries {
        case USA
        case Canada
        case Australia
    }
}

let dollarCanada : CurrencyUnit  = .dollar(national: .Canada)
print(dollarCanada)


//: [Ранее: Задание 5](@previous)  |  задание 6 из 6  |

