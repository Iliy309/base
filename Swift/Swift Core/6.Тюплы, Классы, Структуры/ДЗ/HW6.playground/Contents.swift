import UIKit


//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLScqx-buXGfB6bpfXQyxpL7U5k6XtSFRwos2f8f-mKhqwiXY_w/viewform)

//: # Home Work 6

/*:
 ## Задание 1
 1.1 Создайте новый класс `Orange` со следующими свойствами:
 
 - `color: String`
 
 - `taste: String`
 
 - `radius: Double`
 
 На ваше усмотрение можете создать или не создавать инициализатор
 */
//class Orange {
//    let color : String
//    let taste : String
//    let radius : String
//    var orangeVolume : Int
//
//    init(color: String, taste: String, radius: String) {
//        self.color = color
//        self.taste = taste
//        self.radius = radius
//        self.orangeVolume = 0
//    }
//
//    func calculateOrangeVolume () {
//        var radiusInSantimetrs = Double(radius)! / 10
//        orangeVolume = Int(((pow(radiusInSantimetrs, 3.0) * Double.pi) * 4.0 / 3.0))
//    }
//}
//
//let someOrange = Orange(color: "orange", taste: "sour", radius: "15")
//someOrange.calculateOrangeVolume()
//print(someOrange.orangeVolume)

//: 1.2 Создайте экземпляр класса `Orange` с именем `someOrange`

/*:
 1.3 Проинициализируйте все переменные объекта someOrange следующими значениями:
 
 - `color` — *Orange*
 
 - `taste` — *Sweet*
 
 - `radius` — *95*
 */



//: 1.4 Выведите на консоль сообщение «Orange has <...> color and <...> taste». Обращайтесь к этим значениям напрямую через экземпляр класса, не создавая для них отдельных переменных

//print("Orange has \(someOrange.color) color and \(someOrange.taste) taste")

//: 1.5 Создайте новую константу `orangeVolume` и присвойте ей значение объема апельсина (Число Пи в Swift можно получить через константу `Double.pi`. Формулу расчета можно погуглить). Выведите значение `orangeVolume` на консоль
//

/*:
 1.6 Дополните класс `Orange` новым свойством `orangeVolume`
 
 1.7 Создайте в классе `Orange` новый метод `calculateOrangeVolume` и перенесите в него расчет объема апельсина
 
 1.8 Вызовите метод calculateOrangeVolume
 */





/*:
 ## Задание 2
 2.1 Создайте структуру `Car` со следующими элементами:
 - `name: String`
 - `porductionYear: Int`
 - `horsePower: Int`
 */

//struct Car {
//    var name: String
//    var porductionYear: Int
//    var horsePower: Int
//}
//
////: 2.2 Создайте экземпляр структуры `Car` с названием какого либо автомобильного бренда, например `honda`.
//
//let honda = Car(name: "Civic", porductionYear: 2000, horsePower: 300)
//
////: 2.3 Создайте копию экземпляра `honda`, например, `hondaCivic`
//
//var hondaCivic : Car =  honda
//
//
////: 2.4 Присвойте новое значение переменной name структуры `hondaCivic`
//
//hondaCivic.name.self = "hondaCivic"
//
//
////: 2.5 Создайте цикл с пятью итерациями, в котором в каждой итерации необходимо увеличивать значение horsePower у структуры hondaCivic на единицу
//
//for _ in 1...5 {
//    hondaCivic.horsePower += 1
//}
//
////: 2.6 Выведите значения структур `honda` и `hondaCivic` на консоль в следующем виде: "Мощность двигателя <..> составляет <...> л.с."
//print("Мощность дивгателя \(honda.name) составляет \(honda.horsePower) л.с.")
//print("Мощность дивгателя \(hondaCivic.name) составляет \(hondaCivic.horsePower) л.с.")
//
 
/*:
 ## Задание 3
 3.1 Создайте структуру `PlayerInChess`, в которой есть два свойства: `name` с типом `Sting` и `wins` с типом `Int`
 
 3.2 Создайте экзмепляр струкутуры и инициализируйте её свойства
 
 3.3 Расширьте структуру PlayerInChess методом description, который должен выводить на консоль имя игрока и количество его побед

 3.4 Вызвите данный метод из экземпляра структуры
  */

//struct PlayerInChess {
//    var name : String
//    var wins : Int
//
//    func description() {
//        print("У игрока \(playerIlya.name)  побед \(playerIlya.wins)")
//    }
//
//    mutating func addWins(_ add: Int) {
//        wins += add
//    }
//}
//
//var playerIlya = PlayerInChess(name: "Илья", wins: 13)
//playerIlya.description()
//playerIlya.addWins(3)
//playerIlya.description()


/*:
3.5 Расширте структуру методом addWins, который должен принимать целочисленное значение и увеличивать количество побед на это значение.

3.6 Вызовите метода addWins из экземпляра структуры, затем вызовите метод description
*/




/*:
 ## Задание 4
 3.1 Создайте класс `Employee` (сотрудник) со следующими свойствами:
 
 - `salary`
 
 - `name`
 
 - `surname`
 */

class Employee {
    var salary : Int = 0
    var name : String = ""
    var surmane : String = ""
    
    init(salary: Int, name: String, surname: String) {
        self.salary = salary
        self.name = name
        self.surmane = surname
    }
}
var names = ["John", "Aaron", "Tim", "Ted", "Steven"]
var surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jankins"]
var employeesArray = [Employee]()

//: 4.2 Создайте массив из 5 объектов под названием `names` со следующими элементами: *John*, *Aaron*, *Tim*, *Ted*, *Steven*. И еще один массив `surnames` с элементами: *Smith*, *Dow*, *Isaacson*, *Pennyworth*, *Jankins*


//for i in 0...4 {
//    var newOne = Employee(salary: Int.random(in: 500...2000),
//                          name: names[i],
//                          surname: surnames[i])
//    employeesArray.append(newOne)
//}
//print(employeesArray)


for _ in 1...10 {
    let employee = Employee(
        salary: Int.random(in: 1000...2000),
        name: names.randomElement() ?? "",
        surname: surnames.randomElement() ?? ""
    )
    employeesArray.append(employee)
}
//var employees = [(salary: Int, name: String, surname: String)]()

//for index in names {
//    for indexs in surnames {
//        employees += [(Int.random(in: 1000...2000), index, indexs)]
//    }
//}

//: 4.3 Объявите массив `employees` и создайте цикл, в котором он заполняется десятью объектами класса `Employee` таким образом, что свойства `name` и `surname` инициализируются случайными именами и фамилиями из массивов `names` и `surnames`, соответственно. Свойство `salary` (зарплата) тоже должно генерироваться в случайном диапазоне от *$1000* до *$2000*

//for (salary, name, surname) in employees {
//    //print("\(name) \(surname)'s salary is $\(salary)")
//}


//var employeesDivisionOnTwo = [(salary: Int, name: String, surname: String)]()
//
//for (salary, name, surname) in employees {
//    if salary/2 != 0 {
//        employeesDivisionOnTwo += [(salary, name, surname)]
//        print("\(name) \(surname)’s salary is $\(salary)")
//    }
//}
//: 4.4 Пройдитесь по массиву `employees` при помощи `for-in` и выведите информацию по каждому объекту в виде: «<имя> <фимилия>’s salary is $<... >»


//: 4.5 Создайте отдельный массив на основании `employees`, который включает только тех работников, зарплата которых чётная. Выведите информацию по каждому сотруднику с четной зарплатой, как в пункте 3.4
