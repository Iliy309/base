import Cocoa

var greeting = "Hello, playground"


class Human {
    var name : String
    var surname : String

    init(name: String, surname : String) {
        self.name = name
        self.surname = surname
    }
    
    convenience init () {
        self.init(name: "", surname: "")
    }
    
    convenience init (name: String) {
        self.init(name: name, surname: "")
    }
    
    convenience init (surname: String) {
        self.init(name: "", surname: surname)
    }
    
    func printname() {}
}

class Student : Human {
    var age  : Int
    var quality : Int
    
    //1 Сначала в памяти происходит инициализация обьекта
    init (age: Int, quality: Int) {
        self.age = age
        self .quality = quality
        //2 Потом инициализация наследования
        super.init(name: "ilya", surname: "")
        printname()
    }
    
    convenience init() {
        self.init(age: 0, quality: 0)
    }
}

class Doctor : Student {
    var dress : String
    
     init(dress: String) {
         self.dress = dress
         super.init(age: 0, quality: 0)
    }
    override convenience init(age: Int, quality: Int) {
        self.init(surname: "")
        self.age = age
        self.quality = quality
        

    }
    convenience init(surname: String){
        self.init(dress: "")
        
        self.surname = "Zagumennyy"
    }
    
    convenience init() {
        self.init(age: 0, quality: 0)
    }
}


var doctor = Doctor(age: 22, quality: 5)


//var name : String! // Рекомендация от apple
//
//init? (name: String) { // Не работает при наследовании
//    if name.isEmpty {
//            return nil
//        }
//    self.name = name
//    
//}
//
////При наследовании требуется при override прописать конструкцию и создать ещё один инициализатор для родительской группы
//
//override init(name: String){
//    if name.isEmpty {
//        super.init()
//    } else {
//        super.init(name: name)
//    }
//}
