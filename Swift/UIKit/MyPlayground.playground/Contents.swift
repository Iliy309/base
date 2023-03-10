import Cocoa

var greeting = "Hello, playground"

//
//
////MorseCode[".--", default: ""]
//
//func stringToMorse(_ morseCode: String) -> String {
//
//
//    var alphaNumToMorse = [
//        "A": ".-",
//        "B": "-...",
//        "C": "-.-.",
//        "D": "-..",
//        "E": ".",
//        "F": "..-.",
//        "G": "--.",
//        "H": "....",
//        "I": "..",
//        "J": ".---",
//        "K": "-.-",
//        "L": ".-..",
//        "M": "--",
//        "N": "-.",
//        "O": "---",
//        "P": ".--.",
//        "Q": "--.-",
//        "R": ".-.",
//        "S": "...",
//        "T": "-",
//        "U": "..-",
//        "V": "...-",
//        "W": ".--",
//        "X": "-..-",
//        "Y": "-.--",
//        "Z": "--..",
//        "a": ".-",
//        "b": "-...",
//        "c": "-.-.",
//        "d": "-..",
//        "e": ".",
//        "f": "..-.",
//        "g": "--.",
//        "h": "....",
//        "i": "..",
//        "j": ".---",
//        "k": "-.-",
//        "l": ".-..",
//        "m": "--",
//        "n": "-.",
//        "o": "---",
//        "p": ".--.",
//        "q": "--.-",
//        "r": ".-.",
//        "s": "...",
//        "t": "-",
//        "u": "..-",
//        "v": "...-",
//        "w": ".--",
//        "x": "-..-",
//        "y": "-.--",
//        "z": "--..",
//        "1": ".----",
//        "2": "..---",
//        "3": "...--",
//        "4": "....-",
//        "5": ".....",
//        "6": "-....",
//        "7": "--...",
//        "8": "---..",
//        "9": "----.",
//        "0": "-----",
//        " ": " ",
//    ]
//    var result = String()
//    for i in morseCode {
//        result += (alphaNumToMorse[String(i)] ?? "") + " "
//    }
//    return result
//
//}
//
//func decoderMorse(_ morseCode: String) -> String {
//var alphaNumToMorse = [
//        ".-"    : "A",
//        "-..."  : "B",
//        "-.-."  : "C",
//        "-.."   : "D",
//        "."     : "E",
//        "..-."  : "F",
//        "--."   : "G",
//        "...."  : "H",
//        ".."    : "I",
//        ".---"  : "J",
//        "-.-"   : "K",
//        ".-.."  : "L",
//        "--"    : "M",
//        "-."    : "N",
//        "---"   : "O",
//        ".--."  : "P",
//        "--.-"  : "Q",
//        ".-."   : "R",
//        "..."   : "S",
//        "-"     : "T",
//        "..-"   : "U",
//        "...-"  : "V",
//        ".--"   : "W",
//        "-..-"  : "X",
//        "-.--"  : "Y",
//        "--.."  : "Z",
////        ".-"    : "a",
////        "-..."  : "b",
////        "-.-."  : "c",
////        "-.."   : "d",
////        "."     : "e",
////        "..-."  : "f",
////        "--."   : "g",
////        "...."  : "h",
////        ".."    : "i",
////        ".---"  : "j",
////        "-.-"   : "k",
////        ".-.."  : "l",
////        "--"    : "m",
////        "-."    : "n",
////        "---"   : "o",
////        ".--."  : "p",
////        "--.-"  : "q",
////        ".-."   : "r",
////        "..."   : "s",
////        "-"     : "t",
////        "..-"   : "u",
////        "...-"  : "v",
////        ".--"   : "w",
////        "-..-"  : "x",
////        "-.--"  : "y",
////        "--.."  : "z",
//        ".----" : "1",
//        "..---" : "2",
//        "...--" : "3",
//        "....-" : "4",
//        "....." : "5",
//        "-...." : "6",
//        "--..." : "7",
//        "---.." : "8",
//        "----." : "9",
//        "-----" : "0",
//        " " : " "
//    ]
//
//    var flag = 0
//    var result = String()
//    var saveIndex = String()
//
//
//    for  character in morseCode {
//        switch character {
//        case ".", "-":
//            saveIndex += String(character)
//        case " " where saveIndex == "" && flag > 1 :
//            flag = 0
//            result += " "
//        case " "  where saveIndex != "":
//            result += (alphaNumToMorse[saveIndex] ?? " ")
//            saveIndex = ""
//            flag += 1
//
//        default:  break
//        }
//    }
//    result += (alphaNumToMorse[saveIndex] ?? "")
//
//
//
//    return result
//}
//
//print(stringToMorse("How are you"))
//print(decoderMorse(".... --- .--       .- .-. .     -.-- --- ..-"))



//func printerError(_ s: String) -> String {
//var array = [Character]()
//    for i in s {
//        array += [i]
//    }
//
//    var result = 0
//    array.sorted { a, b  in
//
//        if a < b {
//            result += 1
//        }
//        return true; result
//    }
//    var resultString = "\(result)/ \(array.count)"
//        return resultString
//}
//
//printerError("abcdfihe")
//func printerError(_ s: String) -> String {
//    var result = 0
//    for i in s {
//        switch i.lowercased() {
//        case "a", "b", "c", "d","e","f","j","h","i","g","k","l","m":
//            break
//        default:
//            result += 1
//        }
//    }
//
//    var resultString = "\(result)/\(s.count)"
//        return resultString
//}
//
//printerError("abcifxw")



//func digitalRoot(of number: Int) -> Int {
//    var stringNumber = Int()
//    var result = Int()
//
//    for elements in String(number) {
//        stringNumber += Int(String(elements)) ?? 0
//    }
//
//
//    if String(stringNumber).count > 1 {
//        result = digitalRoot(of: stringNumber)
//    } else {
//        result = stringNumber
//    }
//    return result
//
//}
//
//
//digitalRoot(of: 16)
//digitalRoot(of: 942)
//digitalRoot(of: 132189)
//digitalRoot(of: 493193)
//
//func divisors(_ n: UInt32) -> UInt32 {
//    var divisor  = Int(n)
//    var result = Int()
//    var lastDivisor = Int()
//
//    while divisor != 1 {
//        divisor = divisor/2
//        result += 1
//        print( divisor)
//
//
//    }
//    print(result)
//    print(lastDivisor)
//    return 0
//}
//
//divisors(500000)


//func descendingOrder(of number: Int) -> Int {
//    var result = String()
//    var array = [String]()
//
//    for i in String(number) {
//        array.append(String(i))
//    }
//
//    array = array.sorted {$0 > $1}
//
//    for i in array {
//        result += i
//    }
//    return Int(result) ?? 0
//}
//
//descendingOrder(of: 787790)


//if bmi <= 18.5 return "Underweight"
//
//if bmi <= 25.0 return "Normal"
//
//if bmi <= 30.0 return "Overweight"
//
//if bmi > 30 return "Obese"
//func bmi(_ weight: Int, _ height: Double) -> String {
//    var result = String()
//    var bmi = Double()
//
//    bmi = Double(weight)/pow(height, 2)
//
//    if bmi <= 18.5 {
//        result = "Underweight"
//    } else if  bmi > 18.5 && bmi <= 25.0 {
//        result = "Normal"
//    } else if  bmi > 25.0 && bmi <= 30.0 {
//        result = "Overweight"
//    } else if  bmi > 30 {
//        result = "Obese"
//    }
//    return result
//}
//
//
//bmi(80, 1.80)

//func grow(_ arr: [Int]) -> Int {
//
//    let sum = arr.reduce(1, * )
//    return sum
//}
//
//grow([2,2,3])
//func angle(_ n: Int) -> Int {
//    let result = (n - 2) * 180
//
//    return result
//}
//
//angle(3)
//angle(4)
//angle(5)

//n = 325
//sum = 3+2+5 = 10
//n = 325-10 = 315 (not in the list)
//sum = 3+1+5 = 9
//n = 315-9 = 306 (not in the list)
//sum = 3+0+6 = 9
//n =306-9 = 297 (not in the list)


//func repeatStr(_ n: Int, _ string: String) -> String {
//    var result = String()
//    for _ in 0..<n {
//        result += string
//    }
//    return result
//}
//repeatStr(10, "hahaha")
//            case "a","b","c","d","e","f","g", "h", "i", "g", "k", "l","m", "n","o","p", "k", "r", "s","t","u","v","w","x","y","z":
//                str +=


//import Foundation
//
//extension String {
//     func toJadenCase() -> String {
//        var str = String()
//        var flag = Int()
//
//         for (num, i)  in  self.enumerated() {
//            switch i {
//            case " ":
//                str += String(i)
//                flag += 1
//            default:
//                if flag > 0 || num == 0 {
//                    str += String(i).uppercased()
//                } else { str += String(i) }
//                flag = 0
//            }
//        }
//        return str
//    }
//}

//extension String {
//     func toJadenCase() -> String {
//         self.capitalized
//    }
//}

//
//
//func subtractSum(_ n: Int) -> String {
//    let dict = [
//    1:"kiwi",
//    2:"pear",
//    3:"kiwi",
//    4:"banana",
//    5:"melon",
//    6:"banana",
//    7:"melon",
//    8:"pineapple",
//    9:"apple",
//    10:"pineapple",
//    11:"cucumber",
//    12:"pineapple",
//    13:"cucumber",
//    14:"orange",
//    15:"grape",
//    16:"orange",
//    17:"grape",
//    18:"apple",
//    19:"grape",
//    20:"cherry",
//    21:"pear",
//    22:"cherry",
//    23:"pear",
//    24:"kiwi",
//    25:"banana",
//    26:"kiwi",
//    27:"apple",
//    28:"melon",
//    29:"banana",
//    30:"melon",
//    31:"pineapple",
//    32:"melon",
//    33:"pineapple",
//    34:"cucumber",
//    35:"orange",
//    36:"apple",
//    37:"orange",
//    38:"grape",
//    39:"orange",
//    40:"grape",
//    41:"cherry",
//    42:"pear",
//    43:"cherry",
//    44:"pear",
//    45:"apple",
//    46:"pear",
//    47:"kiwi",
//    48:"banana",
//    49:"kiwi",
//    50:"banana",
//    51:"melon",
//    52:"pineapple",
//    53:"melon",
//    54:"apple",
//    55:"cucumber",
//    56:"pineapple",
//    57:"cucumber",
//    58:"orange",
//    59:"cucumber",
//    60:"orange",
//    61:"grape",
//    62:"cherry",
//    63:"apple",
//    64:"cherry",
//    65:"pear",
//    66:"cherry",
//    67:"pear",
//    68:"kiwi",
//    69:"pear",
//    70:"kiwi",
//    71:"banana",
//    72:"apple",
//    73:"banana",
//    74:"melon",
//    75:"pineapple",
//    76:"melon",
//    77:"pineapple",
//    78:"cucumber",
//    79:"pineapple",
//    80:"cucumber",
//    81:"apple",
//    82:"grape",
//    83:"orange",
//    84:"grape",
//    85:"cherry",
//    86:"grape",
//    87:"cherry",
//    88:"pear",
//    89:"cherry",
//    90:"apple",
//    91:"kiwi",
//    92:"banana",
//    93:"kiwi",
//    94:"banana",
//    95:"melon",
//    96:"banana",
//    97:"melon",
//    98:"pineapple",
//    99:"apple",
//    100:"pineapple",
//    ]
//
//    var key  = n
//    var result = String()
//
//
//    while key > 100 {
//        var sum  = Int()
//
//        for i in String(key) {
//            sum += Int(String(i)) ?? 0
//        }
//
//        key = key - sum
//    }
//
//    if dict[key] != nil {
//        result = dict[key]!
//    }
//    return result
//
//
//}
//
//subtractSum(765)
//
//
//
//guard dict [String(i)] != nil   else {print ("errror")}

//class Solution {
//    func romanToInt(_ s: String) -> Int {
//        var result = Int()
//        var flag = Int()
//        let dict = ["I": 1,"V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
//        for (num,i) in s.enumerated() {
//            switch i {
//            case "I":
//                flag = 1
//            case "X" :
//                flag = 10
//            case "C" :
//                flag = 100
//            default: flag = 0
//            }
//            if flag != 0 {
//                result += dict[String(i)]! -
//            }
//        return result
   // }//"M C M XCIV"
//}


//func fizzBuzz(_ n: Int) -> [String] {
//    var result = [String]()
//    for i in 1..<n {
//        if i % 3 == 0 {
//            result .append("Fizz")
//        } else if i % 5 == 0 {
//            result.append("Buzz")
//        } else {
//            result.append("\(i)")
//        }
//    }
//    return result
//}
//
//fizzBuzz(15)

//func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
//    var result = [Int]()
//
//    for i in nums {
//        i + i == target
//
//    }
//    return result
//}

//var x = "112011"
//var result = Bool()
//while x.count > 1 {
//    if x.removeFirst() == x .removeLast() {
//        result = true
//    } else {result = false}
//}
//
//result
//func isPalindrome(_ x: Int) -> Bool {
//    var stringX = String(x)
//    guard stringX.count > 1  else { return true }
//    var result = Bool()
//    while stringX.count > 1 {
//        if stringX.removeFirst() == stringX.removeLast() {
//            result = true
//        } else {result = false; break}
//    }
//    return result
//}
//isPalindrome(1000021)
//isPalindrome(1)
//isPalindrome(5)

//func longestCommonPrefix(_ strs: [String]) -> String {
//    var result = String()
//    var strs = strs
//    for i in 0...strs.count {
//        if strs[i].removeFirst() == strs[i+1].removeFirst(){
//            result = String(strs[i].removeFirst())
//        } else { result = "" }
//    }
//
//
////    for i in strs {
////        var str = i
////        var array = [Character]()
////        array.append(str.removeFirst())
////        print(array)
////        for i in array {
////            if i == i {
////                result = String(i)
////                print(result)
////            } else { result = "" }
////        }
////    }
//    return result
//}
////longestCommonPrefix(["flower","flow","flight"])
//longestCommonPrefix(["dog","racecar","car"])
//var result = Int()
//var resultI = Int()
//var findIt =  [1,2,2,3,3,3,4,3,3,3,2,2,1]
//
//findIt.sorted().filter{ value in
//    if value == value {
//        var array = Int()
//        array.append(value)
//    }
//}
//
//for i in findIt {
//    if i == i {
//        result + 1
//        resultI = i
//    }
//}
//
//func findIt(_ seq: [Int]) -> Int {
//    for i in seq {
//        if i == i {
//
//        }
//    }
//  return 0
//}


