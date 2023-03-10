//: [Previous](@previous)

//: ## Классы


let postTitle = "Classes"
let postBody = "Text of the article"
let postAuthor = "Vasya Pupkin"

let postTitle2 = "Properties of classes"
let postBody2 = "Text of the article"
let postAuthor2 = postAuthor

/*
class Post {
    var title = ""
    var body = ""
    var author = ""
}

let firstPost = Post()

firstPost.title = "This is my first post"
firstPost.body = "Hello!"
firstPost.author = "Vasya Pupkin"

let secondPost = Post()

secondPost.title = "Second post"
secondPost.body = "A lot of text"
secondPost.author

print("Author \(firstPost.author) has published new post '\(firstPost.title)' with text '\(firstPost.body)'")

print("Author \(secondPost.author) has published new post '\(secondPost.title)' with text '\(secondPost.body)'")

firstPost === secondPost
*/

//: ### Методы классов




class Post {
    
    var title = ""
    var body = ""
    var author = ""
    
    var description: Int {
        numberOfComments
    }
    
    private var numberOfComments = 0
    
    func addComment() {
        numberOfComments += 1
    }
    
    func getDescription() -> Int {
        numberOfComments
    }
}

let firstPost = Post()

firstPost.title = "Здоровый нищий счастливее больного короля"
firstPost.body = "Hello!"
firstPost.author = "Артур Шопенгауэр"
firstPost.addComment()
firstPost.addComment()

let secondPost = Post()

secondPost.title = "Second post"
secondPost.body = "A lot of text"
secondPost.author
//secondPost.numberOfComments = 63
secondPost.description


print("The number of comments for the post \(firstPost.title) is \(firstPost.description)")

print("The number of comments for the post \(secondPost.title) is \(secondPost.getDescription())")



//: ### Инициализация

class Human {
    
    var name = ""
    var age = 0
    
    init() {}
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    deinit {
        print("Объект удалился из памяти")
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I need sleep")
    }
    
    func eat() {
        print("I need food")
    }
}

let human = Human(name: "Ron", age: 26)

human.name
human.age


let someHuman = Human()

someHuman.name
someHuman.age
