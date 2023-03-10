import Cocoa

var greeting = "Hello, playground"
/*
    1. тип комната  в которой есть высота и ширина\ персонаж который имеет х.у в комнате + имя, ... Написать метод, который респечатывает комнату с точкой персонажа
 
2. добавить персонажу метод идти через энум и он не может выйти за рамки комнаты
 3. добавить тип ящик  который убегает от персонажа

 */


struct Home  {
    
    var weight : UInt = 100
    var height : UInt = 100
    
    static let maxWeight = 100
    static let maxHeight = 100
    static let minWeight = 0
    static let minHeight = 0
    
    
    struct Person {
        var name : String
        var y: Int {
                didSet {
                if y > Home.maxHeight || y < Home.minHeight{
                    y = oldValue
                    print("Заданны неверные параметры координат")
                }
            }
        }
        var x: Int {
            didSet {
                if x > Home.maxWeight || x < Home.minWeight {
                    x = oldValue
                    print("Заданны неверные параметры координат")
                }
            }
        }
            
        enum Step {
            case left    //( x: Int, y: Int)
            case right   //( x: Int, y: Int)
            case forward //( x: Int, y: Int)
            case back    //( x: Int, y: Int)
        }
        mutating func movePeson(Step: Step, x: Int, y: Int )  -> Person {

            var move  = Step
            switch move {
            case .left:
            self = Person(name: self.name, y: self.y + 0, x: self.x - x)
            case .right:
            self = Person(name:self.name, y: self.y + 0, x: self.x + x)
            case .back:
            self = Person(name:self.name, y: self.y - y, x: self.x + 0)
            case .forward:
            self = Person(name:self.name, y: self.y + y, x: self.x + 0)
            }
             return self
        }
//        mutating func movePeson(Step: Step)  -> Person {
//
//            var move  = Step
//            switch move {
//            case .left(x: Int, y: Int):
//            self = Person(name: self.name, y: self.y + 0, x: self.x - x)
//            case .right(x: Int, y: T##Int):
//            self = Person(name:self.name, y: self.y + 0, x: self.x + x)
//            case .back:
//            self = Person(name:self.name, y: self.y - y, x: self.x + 0)
//            case .forward:
//            self = Person(name:self.name, y: self.y + y, x: self.x + 0)
//            }
//             return self
//        }
    //}
    }
}

var person1 = Home.Person(name:"Ilya ", y: 2, x: 12)

person1.movePeson(Step: .right, x: 1000, y: 1000)
person1.movePeson(Step: .back, x: 1000, y:1000)
person1.x
person1.y



