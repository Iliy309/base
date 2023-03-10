import UIKit

//var greeting = "Hello, playground"
//
//
//var apples : Int? = 5
//apples = nil
//
////  не работает apples + 1
//
//if apples  == nil {
//    print( " nil apples")
//} else {
//    print (apples)
//}
// //   let a = apples! + 2
//
//
//if var number =  apples {
//    number = number + 2
//}   else {
//    print( " nil apples")
//}
//
//let age = "60"
//
//if let intAge = Int(age) {
//    print(intAge)
//} else {
//    print("Her tebe a ne Int(age)")
//}
//
//
////var a  = "12367"
////var b  = "12314g6"
////var c  = "5tg45"
////var d  = "762"
////var e  = "dq2v"
//
//var summ: Int = 0
//
//
//if let intA = Int(a) {
//    summ += intA
//} else {
//
//}
//
//if let intB = Int(b) {
//    summ += intB
//}




//
//var array = [a, b, c, d, e]
//
//
//
//
//for i in array {
//    if let intI = Int(i) {
//        summ += intI
//    }
//}


//  создать 5 констант и просуммировать их приведя к инту


let a = "wef"
let b = "13d"
let c = "1234"
let d = "678"
let e = "edu"

var array = [a, b, c, d, e]
var sum = Int()

for i in array {
    if let intI = Int(i) {
        sum += intI
    }
}

var adress5 = (numberHouse:21, nameDistrict:"Manhattan")

//func status(statusCode: Int, message: String?, messageError: String?) {
//    let httpStatus  = (statusCode: statusCode, message: message, messageEror: messageError)
//
//    if  200...300 ~= httpStatus.statusCode {
//        print(httpStatus.message!)
//    } else {
//        print(httpStatus.messageEror!)
//    }
//
//
//}
//
//status(statusCode: 404, message: nil, messageError: "not found")
//
//func status2(statusCode: Int, message: String?, messageError: String?) {
//    let httpStatus  = (statusCode: statusCode, message: message, messageEror: messageError)
//
//    if  200...300 ~= httpStatus.statusCode {
//        if httpStatus.message != nil{
//            print(httpStatus.message!)
//        } else { print("message is nil")}
//
//
//    } else {
//        if httpStatus.messageEror != nil{
//            print(httpStatus.messageEror!)
//        } else { print("messageerror is nil")}
//    }
//}
//
//status2(statusCode: 253, message: "run time error", messageError: nil)




struct Studens {
    let name : String
    var numberOfCar : String?
    var rating : Int?
    
    
    func discription() {
        if numberOfCar != nil && rating != nil{
            print(" Студент по имени \(name) катается на машине \(numberOfCar!) потому что у него \(rating!) в году по матиматике")
        } else if  rating == nil {
            print("Студент по имени \(name) не катаетс на машине, потому что он прогулял уроки")
        } else if  rating != nil {
            print( "Студент по имени \(name) не кататется на мащине, потому что у него \(rating!) в году математике")}
    }
}

let studens1 = Studens(name: "ilya", numberOfCar: "bently", rating: 5)
let studens2 = Studens(name: "maria", numberOfCar: nil , rating: nil)
let studens3 = Studens(name: "anton", numberOfCar: nil , rating: 3)
let studens4 = Studens(name: "vlad", numberOfCar: nil, rating: 2)
let studens5 = Studens(name: "danil", numberOfCar: "lada", rating: nil)

studens1.discription()
studens2.discription()
studens3.discription()
studens4.discription()
studens5.discription()



//var tuple = (message: String? , error message: String? )

// (name: , numberOfCar: , rating:) * 5
