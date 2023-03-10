import Cocoa

var greeting = "Hello, playground"

/* 1.Cтруктура Студент  имя фамилия год рождения и среднийбал оценок и  сделать несколько экземпляров положить в массив студентов
 вывести этот массив  пронумеровав их с 1 . Отсортировать массив по среднему балу по убыванию и распечатать массив.
 Отсортировать по фамилии по алфавиту. Если две одинаковые фамилии сортировать по имени.
 2. Сделать константу и присвоить массив и изменить данные студентов
 
 3. Сделать все тоже самое для класса
 
 
*/

struct Student {
    var name : String
    var surname : String
    var year : Int
    var quality : Int
}

var student1 = Student(name: "Masha", surname: "Zagumennaya", year: 1997, quality: 5)
var student2 = Student(name: "Ilya", surname: "Zagumennyy", year: 1999, quality: 4)
var student3 = Student(name: "Anton", surname: "Abramov", year: 2000, quality: 3)

var studentArray = [student1, student2, student3]

var sortedArrayQuality = studentArray
sortedArrayQuality.sorted {$0.quality > $1.quality }//|| $0.name < $1.name}
//sortedArrayQuality.forEach {print($0)}


var sortedArrayName = sortedArrayQuality.sorted {$0.name < $1.name}
//sortedArrayName.forEach {print($0)}

sortedArrayName[1].quality = 5
sortedArrayName[0].quality = 3
sortedArrayName[2].quality = 1

studentArray.forEach{print($0)}
sortedArrayName.forEach({print($0)})



class Students {
    var name : String
    var surname : String
    var year : Int
    var quality : Int
    
    init(name : String, surname : String, year : Int, quality : Int) {
        self.name = name
        self.surname = surname
        self.year = year
        self.quality = quality
    }
}

var classstudent1 = Students(name: "Masha", surname: "Zagumennaya", year: 1997, quality: 5)
var classstudent2 = Students(name: "Ilya", surname: "Zagumennyy", year: 1999, quality: 4)
var classstudent3 = Students(name: "Anton", surname: "Abramov", year: 2000, quality: 3)

var arrayStudens = [classstudent1, classstudent2, classstudent3]

var arraySorted = arrayStudens
arraySorted.sorted{ $0.quality < $1.quality }
//arraySorted.forEach {print($0)}

//arraySorted.sorted { $0.name < $1.name}
//arraySorted.forEach{print($0)}

arraySorted[0].quality = 1
arraySorted[1].quality = 1
arraySorted[2].quality = 1

//arraySorted.forEach {print($0)}

for i in arrayStudens{
    print(i.name, i.surname, i.year, i.quality)
}
for i in arraySorted {
    print(i.name, i.surname, i.year, i.quality)
}


