import UIKit


//: # Lesson 6
//: ## Кортежи

/*:
 
    (valueOne, ValueTwo, ValueThree,…)

*/

var weather = (22, "Sunny")

weather

//: ### Получение доступа к элементам

weather.0 = 24
weather.1 = "Rainy"

let (temperature, _) = weather
temperature
//atmos

//: ### Именование элементов кортежа

var currentWeater = (temp: 22, atmos: "Fog", windSpeed: 6)
currentWeater.temp
currentWeater.atmos
currentWeater.windSpeed

//: ### Массовое присвоение значений

var numberOne = 1
var numberTwo = 2
var numberThree = 3

(numberOne, numberTwo, numberThree) = (4, 5, 6)

numberOne
numberTwo
numberThree

var cityTemp = ["Moscow": Int.random(in: 5...24),
                "Ufa": Int.random(in: 5...24),
                "Saratov": Int.random(in: 5...24)]

for (city, temp) in cityTemp {
    print("Температура в городе \(city) составляет \(temp) градусов")
}

let cityList = cityTemp.sorted(by: <)

for cityTemp in cityList {
    print("\(cityTemp.key) - \(cityTemp.value)")
}

func getTemp(in city: String) -> (city: String, temp: Int) {
    let temp = Int.random(in: 5...24)
    return (city, temp)
}

let (city, temp) = getTemp(in: "Ufa")
print("Температура в городе \(city) состовляет \(temp) градусов")

let tempInCity = getTemp(in: "Moscow")
print("Температура в городе \(tempInCity.city) состовляет \(tempInCity.temp) градусов")

