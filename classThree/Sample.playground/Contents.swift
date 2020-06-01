import UIKit
//
//var str = "Hello, playground"
//
//func display(names: String...) {
//    print("Friends:", names.joined(separator: ", "))
//}
//
//display(names: "Tom", "Larry", "Moe")
//
//var people = Dictionary<String,String>()
//people["Bob"] = "Smith"
//print(people.count)
//
//
//func sum(numbers: Array<Int>) -> Int {
//    var result = 0
//
//    for number in numbers {
//        result += number
//    }
//
//    return result
//}
//
//let result = sum(numbers: [5, 4, 3, 2, 1])
//print(result)
//
//
//let card = "Aces"
//
//switch card {
//case "Aces":
//    fallthrough
//
//case "Spades", "Clovers", "Hearts":
//    print("Spades Clovers Hearts")
//
//default:
//    print("No Card")
//}
//
let numbers = [1, 3, 5, 7, 9]
let result = numbers.map { $0 * 10 }
print(result)

let digits = Array(1..<10)
print(digits.count)

let countries = [String](repeating: "Belgium", count: 2)
print(countries.count)

var cars = Set<String>()
cars.insert("Volvo")
cars.insert("Mercedes")
cars.insert("Ford")
cars.insert("Volvo")
print(cars.count)

var trees = [String]()
trees.reserveCapacity(2)
trees.append("Oak")
trees.append("Redwood")
trees.append("Evergreen")
print(trees.count)


