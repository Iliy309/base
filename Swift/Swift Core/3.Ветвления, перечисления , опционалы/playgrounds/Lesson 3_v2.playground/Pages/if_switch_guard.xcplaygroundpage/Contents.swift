//Урок 3


//: ## Конструкция if
/*:
    if condition {
        some code
    }
 
*/
print("====КОНСТРУКЦИЯ if====")

var someNumber = 10


if someNumber < 4 { // False
    print("The condition is true")
}

someNumber = 1

if someNumber < 4 { // True
    print("The condition is true")
}


/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    }
*/
print("\n====КОНСТРУКЦИЯ else if====")

someNumber = 10

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // False
    print("The second condition is true")
}

someNumber = 7

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // True
    print("The second condition is true")
}

someNumber = 1

if someNumber < 4 { // True
    print("The first condition is true")
} else if someNumber < 8 { // True, but never execute
    print("The second condition is true")
}

if someNumber < 4 { // True
    print("The first condition is true")
}

if someNumber < 8 { // True, but never execute
    print("The second condition is true")
}


/*:
    if conditionOne {
        some code
    } else if conditionTwo {
        some code
    } else {
        some code
    }
 */
print("\n====КОНСТРУКЦИЯ if-else====")


someNumber = 10

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // False
    print("The second condition is true")
} else if someNumber < 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // False
    print("The second condition is true")
} else if someNumber <= 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}

if someNumber < 4 { // False
    print("The first condition is true")
} else if someNumber < 8 { // False
    print("The second condition is true")
} else if someNumber == 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}

//: ### Использование логических операторов
//: ### Оператор логического И
print("\n====ОПЕРАТОР ЛОГИЧЕСКОГО И====")

var a = 1
var b = 1

if a < 4 && b < 4 { // True
    print("The first condition is true")
} else if a < 8 { // True, but never execute
    print("The second condition is true")
} else if a == 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}

b = 10

if a < 4 && b < 4 { // False
    print("The first condition is true")
} else if a < 8 { // True
    print("The second condition is true")
} else if a == 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}


//: ### Оператор логического ИЛИ
print("\n====ОПЕРАТОР ЛОГИЧЕСКОГО ИЛИ====")

if a < 4 || b < 4 { // True
    print("The first condition is true")
} else if a < 8 { // True, but never execute
    print("The second condition is true")
} else if a == 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}

var c = 3

if (a < 4 || b < 4) && c == 3 { // True
    print("The first condition is true")
} else if a < 8 { // True, but never execute
    print("The second condition is true")
} else if a == 10 { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}


//: ### Оператор логического НЕ
print("\n====ОПЕРАТОР ЛОГИЧЕСКОГО НЕ====")

a = 10
b = 1

if (a < 4 || b < 4) && c != 3 { // False
    print("The first condition is true")
} else if a < 8 { // False
    print("The second condition is true")
} else if a == 10 { // True
    print("The third condition is true")
} else {
    print("Nothing was true")
}

if (a < 4 || b < 4) && c != 3 { // False
    print("The first condition is true")
} else if a < 8 { // False
    print("The second condition is true")
} else if !(a == 10 && b == 1) { // False
    print("The third condition is true")
} else {
    print("Nothing was true")
}

//: ### Тернарный оператор
print("\n====ТЕРНАРНЫЙ ОПЕРАТОР====")

// condition ? some code : some code

if a < 10 {
    print("The condition is true")
} else {
    print("The condition is false")
}

a < 10 ? print("The condition is true") : print("The condition is false")

if a < 10 {
    c = a - b
} else {
    c = a + b
}

c = a < b ? a - b : a + b

//: ## Switch statement



/*:
    switch значение для сопоставления {
    case значение 1:
        инструкция для первого значения
    case значение 2, значение 3:
        инструкция для второго и третьего значения
    default:
        инструкция, если совпадений с шаблонами не найдено
    }
*/

print("====SWITCH STATEMENT====")

var someCharecter: Character = "a"

if someCharecter == "a" {
    print("Is an A")
} else if someCharecter == "b" {
    print("Is an B")
} else if someCharecter == "c" {
    print("Is an C")
} else {
    print("Dont now what is it")
}

someCharecter = "B"

if someCharecter == "a" || someCharecter == "A" {
    print("Is an A")
} else if someCharecter == "b" || someCharecter == "B" {
    print("Is an B")
} else if someCharecter == "c" || someCharecter == "C" {
    print("Is an C")
} else {
    print("Dont now what is it")
}

switch someCharecter {
case "a", "A":
    print("Is an A")
case "b", "B":
    print("Is an B")
case "c", "C":
    print("Is an C")
default:
    print("Dont now what is it")
}

//: ### Соответствие диапазону

print("====СООТВЕТСТВИЕ ДИАПАЗОНУ====")

let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount = ""

switch approximateCount {
case ..<0:
    print("Error")
case 0:
    naturalCount = "no"
case 1:
    naturalCount = "one"
case 2...4:
    naturalCount = "a few"
case 5...11:
    naturalCount = "several"
case 12...99:
    naturalCount = "dozens of"
default:
    naturalCount = "many"
}

print("There are \(naturalCount) \(countedThings)")




//: [Далее: Перечисления (енамы)](@next)
