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

class Figure {
    
    var height: Float = 0
    var width: Float = 0
    var radius: Float = 0
    var square: Float = 0
    var perimeter: Float = 0
    
    init(height: Float, width: Float) {
        self.height = height
        self.width = width
    }
    
    init(radius: Float) {
        self.radius = radius
    }
    
    func squareOfFigure() -> Float { square }
    func perimeterOfFigure() -> Float { perimeter }
}



/*:
 1.2. Создайте классы `Circle`, `Rectangle` и `Ellipse`, унаследовав их от `Shape`. Переопределите методы `squareOfShape` и `perimeterOfShape` для каждого класса в соответствии с правилом расчета площади или периметра (длины) конкретной фигуры

 1.3 В каждом классе создайте метод `description`, который выводит на консоль сообщение следующего вида: «Площадь фигуры <тип фигуры> равна <... >, периметр (длина) равна <...>»
 */

class Rectangle: Figure {
    
    override func squareOfFigure() -> Float {
        square = height * width
        return square
    }
    
    override func perimeterOfFigure() -> Float {
        perimeter = (height + width) * 2
        return perimeter
    }
    
    func description() {
        print("Площадь прямоугольника равна \(squareOfFigure()), периметр равен \(perimeterOfFigure())")
    }
}

class Circle: Figure {
    override func squareOfFigure() -> Float {
        square = Float.pi * radius * radius
        return square
    }
    
    override func perimeterOfFigure() -> Float {
        perimeter = 2 * Float.pi * radius
        return perimeter
    }
    
    func description() {
        print("Площадь окружности равна \(squareOfFigure()), длина равна \(perimeterOfFigure())")
    }
}

class Ellipse: Figure {
    override func squareOfFigure() -> Float {
        square = Float.pi * height * width
        return square
    }
    
    override func perimeterOfFigure() -> Float {
        perimeter = Float.pi * (height + width)
        return perimeter
    }
    
    func description() {
        print("Площадь элипса равна \(squareOfFigure()), длина равна \(perimeterOfFigure())")
    }
}


//: 1.4 Создайте по экземпляру каждого класса, кроме `Shape`, проинициализируйте свойства `height` и `width` или `radius` для каждого класса в любые значения и вызовите у каждого экземпляра класса метод `description`
let rectangle = Rectangle(height: 6, width: 9)
let circle = Circle(radius: 5)
let elipse = Ellipse(height: 10, width: 5)

rectangle.description()
circle.description()
elipse.description()


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

// 2.1


/// Композиция
struct AudioFile {
    /// Название
    let title: String
    /// Альбом
    let album: String
    /// Автор
    let author: String
    /// Длина в секундах
    let lengthSeconds: Int
}

/// Аудиоплеер
class AudioPlayer {
    /// Кол-во композиций
    var numberOfCompositions: Int { compositions.count }
    /// Массив композиций (плейлист)
    private var compositions: [AudioFile] = []
    /// Индекс текущей композиции
    private var currentCompositionIndex: Int = 0
    /// Текущее устройство для вывода звука, если nil, то устройство не подключено
    private var currentOutputAudioDevice: OutputAudioDevice?

    /// Подключить устройство для вывода звука
    func setOutputDevice(_ device: OutputAudioDevice?) {
        currentOutputAudioDevice = device
    }
    
    /// Добавить новые треки
    func add(compositions: [AudioFile]) {
        self.compositions.append(contentsOf: compositions)
    }
    
    /// Перемешать плейлист
    func shuffleCompositions() {
        compositions.shuffle()
    }
    
    // MARK: - Проигрывание
    
    /// Включить текущуий трек
    func playCurrentComposition() {
        guard compositions.count > 0 else {
            printNoCompositions()
            return
        }
        play(composition: compositions[currentCompositionIndex])
    }
    
    /// Включить следующий трек
    func playNext() {
        guard compositions.count > 0 else {
            printNoCompositions()
            return
        }
        let nextIndex = currentCompositionIndex + 1 < compositions.count ? currentCompositionIndex + 1 : 0
        currentCompositionIndex = nextIndex
        let nextComposition = compositions[nextIndex]
        play(composition: nextComposition)
    }

    /// Включить предыдущий трек
    func playPrevious() {
        guard compositions.count > 0 else {
            printNoCompositions()
            return
        }
        let previousIndex = currentCompositionIndex - 1 >= 0 ? currentCompositionIndex - 1 : compositions.count - 1
        currentCompositionIndex = previousIndex
        let previousComposition = compositions[previousIndex]
        play(composition: previousComposition)
    }
    
    /// Проиграть композицию
    private func play(composition: AudioFile) {
        print("Играет песня \"\(composition.title)\" из альбома \"\(composition.album)\", исполнитель \"\(composition.author)\"")
        currentOutputAudioDevice?.playSound(withLengthInSeconds: composition.lengthSeconds)
    }
    
    /// Вывести информацию о том, что композиций нет
    private func printNoCompositions() {
        print("Композиции не найдены")
    }
}

// 2.2

/// Протокол устройства для вывода звука
protocol OutputAudioDevice {
    /// Проиграть звук с длительностью
    func playSound(withLengthInSeconds length: Int)
}

/// Выходное устройство - Наушники
class Headphones: OutputAudioDevice {
    func playSound(withLengthInSeconds length: Int) {
        print("В наушниках проигрывается неизвестный звук длительностью \(length) с.")
    }
}

/// Выходное устройство - Колонки
class Loudspeakers: OutputAudioDevice {
    func playSound(withLengthInSeconds length: Int) {
        print("На колонках проигрывается неизвестный звук длительностью \(length) с.")
    }
}


// 2.3

// Создать объект класса проигрыватель(AudioPlayer)

let myAudioPlayer = AudioPlayer()

// Добавить в него 3 любые песни addCompositions, пример песни: AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063)

myAudioPlayer.add(compositions: [
    AudioFile(title: "Anesthetize", album: "Fear of a Blank Planet", author: "Porcupine Tree", lengthSeconds: 1063),
    AudioFile(title: "Афоризмы житейской мудрости", album: "Аудиокниги", author: "Артур Шопенгауэр", lengthSeconds: 14689),
    AudioFile(title: "Good song", album: "Some Album", author: "Some author", lengthSeconds: 1633)
])

// Проиграть 1 песню (и вспомнить, что выходное устройство не подключено :-))

myAudioPlayer.playCurrentComposition() // можно также playNext()

// Подключить к проигрывателю колонки Loudspeakers.

let loudspeakers = Loudspeakers()
myAudioPlayer.setOutputDevice(loudspeakers)

// Перемешать песни (метод shuffleCompositions())

myAudioPlayer.shuffleCompositions()

// Проиграть 5 песен через метод playNext()

myAudioPlayer.playNext()
myAudioPlayer.playNext()
myAudioPlayer.playNext()
myAudioPlayer.playNext()
myAudioPlayer.playNext()

// Вместо колонок подключить наушники Headphones

let headphones = Headphones()
myAudioPlayer.setOutputDevice(headphones)

// Проиграть 2 песни.

myAudioPlayer.playPrevious()
myAudioPlayer.playPrevious()

// Опционально: можно отключить выходное устройство

myAudioPlayer.setOutputDevice(nil)
