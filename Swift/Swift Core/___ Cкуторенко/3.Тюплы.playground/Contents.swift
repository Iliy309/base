import UIKit

var greeting = "Hello, playground"
let a = (1, "hello", true, 2.4)
let( number, gratings, check, decimal) = a
print(a)
print(check)
check
number
gratings
decimal
a.0
a.1
a.2
a.3
let tuple = (index:1, phrase:"Hello", registered: true, letency:2.4)
tuple.phrase


var maria = (pushUps: 15 ,pullUps: 10 , sitUps: 10)
var ilya = (pushUps: 5,pullUps: 5, sitUps: 15)
maria.0
maria.1
maria.2
ilya.0
ilya.1
ilya.2
maria.pullUps
maria.pushUps
maria.sitUps
ilya.pushUps
ilya.pullUps
ilya.sitUps
print ("Илья подтягивается \(ilya.1)  отжимается \(ilya.pushUps)") // приседает \(sitUps)")

print (" Общий итоге в перевесе \(maria.0 - ilya.0) , \(maria.1 - ilya.1) , \(maria.2 - ilya.2)")
print (" Общий итоге в перевесе  очков Марии \((maria.0 - ilya.0) + (maria.1 - ilya.1)  + (maria.2 - ilya.2))")
