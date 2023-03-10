import UIKit

//:  [Сылка на тесты](https://docs.google.com/forms/d/e/1FAIpQLSeNUvNsLIHjKJluYyK7DvCuHRCbp7N4kYR9vDMw0ILdWeF1HQ/viewform)

//: # Home Work 7


 
/*:
 ## Задание 1
 1.1 Создайте класс `Shape` (родительский класс) со следующими свойствами:
 
 - `height: Float`
 
 - `width: Float`
 
 - `radius: Float`
 
 - `square: Float`
 
 - `perimeter: Float`
 
 Oбъявите в классе методы `squareOfShape` и `perimeterOfShape` для расчетов площади и периметра (длины) фигуры соответственно. Методы должены возвращать `Float`. Создайте инициализатор для сторон прямоугольника и отдельный инициализатор для радиуса.
 */

class Shape {
    var height: Float?
    var width: Float?
    var radius: Float?
    var square: Float?
    var perimeter: Float?
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
//        self.radius = 0
//        self.square = 0
//        self.perimeter = 0
        
    }
    
    init(radius: Float) {
        self.radius = radius
//        self.height = 0
//        self.width = 0
//        self.square = 0
//        self.perimeter = 0
    }
    
    func squareOfShape() -> Float{
        return square
    }
    func perimeterOfShape() -> Float{
        return perimeter
    }
    
}


class Circle: Shape {
    override func squareOfShape() -> Float {
        square = Float.pi * radius * radius
        return square
    }
    override func perimeterOfShape() -> Float {
        perimeter = Float.pi * 2 * radius
        return perimeter
    }
    
    func discription() {
          print("Площадь круга  равна \(square), периметр  равен \(perimeter)")
    }
}


class Rectangle: Shape {
    override func squareOfShape() -> Float {
        square = height * width
        return square
    }
    override func perimeterOfShape() -> Float {
        perimeter = 2*(height + width)
        return perimeter
    }
    func discription() {
          print("Площадь прямоугольника равна \(square), периметр  равен \(perimeter)")
    }
}

class Ellipse: Shape {
    override func squareOfShape() -> Float {
        square = 2*height*width
        return square
    }
    override func perimeterOfShape() -> Float {
        perimeter = (4*(Float.pi*height*width + (height - width))) / (height + width)
        return perimeter
    }
    func discription() {
          print("Площадь элипса равна \(square), периметр  равен \(perimeter)")
    }
}

var circle = Circle(radius: 6)
var rectangle = Rectangle(height: 3, width: 5)
var ellipse = Ellipse(height: 2, width: 7)


circle.discription()
circle.square
circle.perimeter
circle.squareOfShape()
circle.perimeterOfShape()
circle.square
circle.perimeter
circle.discription()

rectangle.discription()
rectangle.square
rectangle.perimeter
rectangle.squareOfShape()
rectangle.perimeterOfShape()
rectangle.square
rectangle.perimeter
rectangle.discription()

ellipse.discription()
ellipse.square
ellipse.perimeter
ellipse.squareOfShape()
ellipse.perimeterOfShape()
ellipse.square
ellipse.perimeter
ellipse.discription()
/*:
 1.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади или периметра (длины) конкретной фигуры

 1.3 В каждом классе создайте метод `description`, который выводит на консоль сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равна <...>»
 */



//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape`, проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения и вызовите у каждого экземпляра класса метод `description`


//var audio = [1, 2, 3, 6]
//print(audio[i + 1])
/*:
## Задание 2

 2.1.
 
 Спроектировать проигрыватель(класс `AudioPlayer`), в него можно добавить одну или несколько композиций (метод `addCompositions(compositions: [AudioFile])`):
 - композиция (класс или структура `AudioFile`) имеет название, альбом, автора и длительность.
 
 Проигрыватель может:
 - перемешивать композиции(метод `shuffleCompositions()`)
 - выводить количество песен (свойство `numberOfCompositions`)
 - проигрывать следующую песню (метод `playNext()`), предыдущую (метод `playPrevious()`)
 - при проигрывании  песни выводить в консоль: "Играет композиция с именем <название>(<альбом>). Автор: <автор>",
 - если была  последняя композиция(песня), то при проигрывании следующей(`playNext()`) будет играться первая.
 - если песен нет, то при попытке проигрывания следующей песни или предыдущей выводить: "Композиции не найдены",
 
 
 */

//class AudioPlayer {
//    var composition = [AudioFile]()
//    var quantityComposition : Int
//
//    init() {
//        self.composition = [AudioFile]()
//        self.quantityComposition = 0
//    }
//
//    struct AudioFile {
//        var name : String
//        var album : String
//        var author : String
//        var duration : Float
//
//        func discription () {print("Играет композиция с именем \(name) (\(album)). Автор: \(author)")}
//    }
//
//    func addComposition()  {
//        composition.append(AudioFile(name: String, album: String, author: String, duration: Float))
//
//
//    }
//
//    func shuffleComposition() {
//        composition.shuffle()
//    }
//    func playNext() {
//        return composition[1]
//
//    }
//    func playPrevius() {
//        return composition[1]
//    }
//
//
//}




/*
 2.2.
 
 К проигрывателю через USB может быть подключено одно из выходных устройств: Наушники(класс `Headphones`), Колонки(класс `Loudspeakers`).
 
 Колонки при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "На колонках проигрывается неизвестный звук длительностью <длительность>"
 
 Наушники при начале проигрывания композиции в проигрывателе(если подключены) выводят в консоль "В наушниках проигрывается неизвестный звук длительностью <длительность>", где <длительность> - это длительность композиции.
 
 > Если интерфейс подключения один (USB), то может стоит подключать выходное устройство через протокол?
 
 2.3.
 Время послушать музыку! Для этого нужно последовательно выполнить действия:
 
 - Создать объект класса проигрыватель(`AudioPlayer`),
 - Добавить в него 3 любые песни `addCompositions`, пример песни: `AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063)`
 - Проиграть 1 песню (и вспомнить, что выходное устройство не подключено :-))
 - Подключить к проигрывателю колонки `Loudspeakers`.
 - Перемешать песни (метод `shuffleCompositions()`)
 - Проиграть 5 песен через метод `playNext()`.
 - Вместо колонок подключить наушники `Headphones`
 - Проиграть 2 песни.

*/


