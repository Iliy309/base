import UIKit

//: ## Протоколы

//: ### CustomStringConvertable

let string = "Hello, world!"
print(string)

let number = 10
print(number)

let bool = true
print(bool)

class Shoes: CustomStringConvertible {
    
    let color: String
    let size: Int
    let hasLaces: Bool
    
    var description: String {
        "Shoes(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
}
 
 let myShoes = Shoes(color: "Brown", size: 41, hasLaces: true)
 print(myShoes)

//: ### Equatable


struct Employee: Equatable, Comparable {
    
    let firstName: String
    let lastName: String
    let jobTitle: String
    let phoneNumber: String
    
    static func ==(lhs: Employee, rhs: Employee) -> Bool {
        lhs.lastName == rhs.lastName && lhs.phoneNumber == rhs.phoneNumber
    }
    
    static func <(lhs: Employee, rhs: Employee) -> Bool {
        lhs.lastName < rhs.lastName
    }
}

let employees = [
    Employee(
        firstName: "Alexey",
        lastName: "Efimov",
        jobTitle: "Teacher",
        phoneNumber: "8-999-888-66-77"
    ),
    Employee(
        firstName: "Ivan",
        lastName: "Akulov",
        jobTitle: "Head",
        phoneNumber: "8-999-787-67-98"
    ),
    Employee(
        firstName: "Ivan",
        lastName: "Danilin",
        jobTitle: "Teacher",
        phoneNumber: "8-999-555-44-33"
    )
]

let someEmployee = Employee(
    firstName: "Ivan",
    lastName: "Akulov",
    jobTitle: "",
    phoneNumber: "8-999-787-67-98"
)

for employee in employees {
    if employee == someEmployee {
        print("The emplyee is registered in the company")
    }
}

//: ### Comparable
 
let sortedEmployees = employees.sorted(by: <)
for employee in sortedEmployees {
    print(employee.lastName)
}

//: ### Создание собственного протокола

protocol FullyNameProtocol {
    var fullName: String { get }
    func sayHello()
}

extension FullyNameProtocol {
    func doSomthing() {}
}

struct Person: FullyNameProtocol {
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    let firstName: String
    let lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func sayHello() {
        print("Hello, \(fullName)!")
    }
}

let person = Person(firstName: "Tim", lastName: "Cook")
person.sayHello()

//: ### Делегирование


