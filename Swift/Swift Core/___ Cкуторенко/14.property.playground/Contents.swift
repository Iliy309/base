
import Foundation

var greeting = "Hello, playground"
/*
 1. Повторить урок. для этого студента добавить дату рождения день-месяц-год. посчитать количество дней рождения. сколько студент учился
 2. создать структуру отрезок и точка  1 компьютер митпоинт + длина отрезка. если митпоинт установить в другую сторону , то и отрезок должен перенестись +  при изменение длины отрезка двигается точка б
 */

struct Students {
    
    var name : String {
        didSet{
            print(oldValue)
            name  = name.uppercased()
        }
    }
    var surname : String
    var bith : (day: Int, month: Int, year: Int)
    
    var fullName : String {
        get { name + "" + surname
        }
        set { print("fullname want to new" + newValue)
            
            let words = newValue.components(separatedBy:"")
            if words.count > 0 {
                name = words[0]
            }
            if words.count > 1 {
                surname = words[1]
            }
            
            
        }
    }
    
    var yearOfBith: Int {
        2022 - bith.year
    }
    
    var yearOfStudents: Int {
        2022 - bith.year - 6
        
    }
    
    
}

var student = Students(name: "Ilya", surname: "Zagumennyy", bith: (day: 6, month: 12, year: 1999))

student.yearOfBith
student.yearOfStudents
student.fullName

student.name = "masha"

student.fullName

student.name
student.surname


student.fullName = "Masha Zagumennaya"
student.name
student.surname



/*
 1. Повторить урок. для этого студента добавить дату рождения день-месяц-год. посчитать количество дней рождения. сколько студент учился
 2. создать структуру отрезок и точка  1 компьютер митпоинт + длина отрезка. если митпоинт установить в другую сторону , то и отрезок должен перенестись +  при изменение длины отрезка двигается точка б
 */



struct Line {
    
    var a : (x: Double, y: Double)
    var b : (x: Double, y: Double)

    //var a = Point(x: Double, y: Double)
     
//    struct Point {
//        var x: Double
//        var y: Double
//    }
        
    var meetPointX : Double {(a.x + b.x)/2}
    var meetPointY : Double {(a.y + b.y)/2}
    
    var wight : Double {
        var wightPifagor = pow((a.y - b.y), 2) + pow((a.x - b.x), 2)
        return pow(wightPifagor, -2)
    }//|AB|² = (y2 - y1)² + (x2 - x1)²  }
}



var line = Line(a: (x: 23, y: 15), b: (x: 100, y: 150))

line.wight
line.meetPointX
line.meetPointY

line.a = (x: 5, y : 3)
line.a
line.b
line.meetPointX
line.meetPointY
line.wight



class Student {
    class var maxAge : Int { 100
        
    }
    static var max = 100
}
Student.maxAge
Student.max



/*
 1. Структура описания файла
 имяфайла
 путь К файла
 максразмерфайланадиске
 типфайла - сскрытый. нескрытый
 содержимое файла
 
 
 
 2. энум цветовая гамма инт + три свойства типу количество цветов гамме, начальный цвет и конечный цвет
 
 
 3. Класс человек имя фамилия возраст рост вес + огрограничение на все свойства плюс счетчик на количество созданных элементов
 */

let  maxFileInDisk =  255
struct File {
    
    var name : String
    var adress : String
    var typeFile : Bool // Скрытый - тру, нескрытый - фолс
    var fileInDisk : Int {
        didSet {
            if fileInDisk > File.maxFileInDisk {
                fileInDisk = oldValue
                print("instance oldValue")
            }
        }
    }
    
    static let  maxFileInDisk =  255
  
    lazy var text = "Hello World!"

}

var file1 = File(name: "Medusa", adress: "c: приложения/ medusa.txt", typeFile: false, fileInDisk: 253)

file1.fileInDisk = 500


file1.text


enum RGB  {
    case red     (Int, Int, Int)
    case orange  (Int, Int, Int)
    case yellow  (Int, Int, Int)
    case green   (Int, Int, Int)
    case blue    (Int, Int, Int)
    case darkBlue(Int, Int, Int)
    case purple  (Int, Int, Int)
    
    
    static var totalcolor = 7
    static var startColor = "black"
    static var finishColor = "white"
}


RGB.totalcolor



class Human {
    var name : String {
        didSet{
            if name.count > Human.maxNameHuman {
                name = oldValue
            }
        }
    }
    var surname : String {
        didSet{
            if surname.count > Human.maxSurnameHuman {
                surname = oldValue
            }
        }
    }
    var age : Int {
        didSet{
            if age > Human.maxAgeHuman {
                age = oldValue
            }
        }
    }
    var wight : Int {
        didSet{
            if wight > Human.maxWightHuman {
                wight = oldValue
            }
        }
    }
    var height : Int {
        didSet{
            if height > Human.maxHeightHuman{
                height = oldValue
            }
        }
    }
    
    static let maxNameHuman = 59
    static let maxSurnameHuman = 59
    static let maxAgeHuman = 125
    static let maxWightHuman = 610
    static let maxHeightHuman = 251
    
    init (name: String, surname: String, age: Int, wight: Int, height: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.wight = wight
        self.height = height
        
        Human.totalHuman += 1
    }
    
    static var totalHuman = 0
    
}


var human1 = Human(name: "ilya", surname: "Zagumennyy", age: 22, wight: 85, height: 179)
Human.totalHuman
