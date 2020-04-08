import UIKit
//
//class Shape {
//    var a: Double
//    var b: Double
//
//    init(a: Double, b: Double) {
//        self.height = height
//        self.width = width
//    }
//
//    func calculateArea(a: Double, b: Double) -> Double {
//        return 0
//    }
//
//    func calculateParameter(a: Double, b: Double) -> Double {
//        return 0
//    }
//}
//
//class Triangle: Shape {
//    override func calculateArea(a: Double, b: Double) -> Double {
//        return (a * b)/2
//    }
//    override func calculateParameter(a: Double, b: Double) -> Double {
//        let cSquared = pow(a, 2) + pow(b, 2)
//        let c = pow(cSquared, 0.5)
//        return a + b + c
//    }
//}
//
//class Circle: Shape {
//    override func calculateArea(a: Double, b: Double) -> Double {
//        let radius = 0.5 * a
//        return (3.14 * pow(radius, 2))
//    }
//    override func calculateParameter(a: Double, b: Double) -> Double {
//        let radius = 0.5 * a
//        return 2 * 3.14 * radius
//    }
//}
//
//class Square: Shape {
//    override func calculateArea(a: Double, b: Double) -> Double {
//        return a * b
//    }
//    override func calculateParameter(a: Double, b: Double) -> Double {
//        return a * 2 + b * 2
//    }
//}
//

//let length = 20.5
//let width = 10
//let area = length * width


//var amount = 0
//
//for x in 0..<10 {
//    if x % 2 == 0 {
//        amount += 3
//    }
//}
//print(amount)
//let planets = ["Jupiter", "Mars", "Venus", "Earth"]
//
//
//var planet = planets[3]
//planet = planets.last!
//planet = planets[planets.count  - 1]
//
//
//var myArray = [1, 2, 3]
//myArray.append(1)
//
//myArray.insert(1, at: 4)
//
//
//var sum = 0
//for i in 0...20 {
//    sum += 1
//}
//
//print(sum)

//var result = false
//if result { print(true) }
//
////var result = false
////if (result) { print(true) }
//var result = false
//if result
//{
//    print(true)
//}
//var data: String?
//var isValid = true
//
//func processData(someData: String?) {
//    guard let validData = someData else {
//        isValid = false
//        return
//    }
//    isValid = true
//}
//
//processData(someData: data)
//print(isValid)


//var fullName = "empty"
//var firstName: String?
//var lastName: String?
//
//firstName = "Jan"
//
//if let first = firstName, let last = lastName {
//    fullName = "\(first) \(last)"
//}
//print(fullName)
class Humanoid {
    func species() {
        print("Humanoid")
    }
}
class Orc: Humanoid {
    func species() {
        print("Orc")
    }
}
class Elf: Humanoid {
    func species() {
        print("Elf")
    }
}
class Urukhai: Orc, Elf {
    func species() {
        print("Uruk-hai")
    }
}
let urukhai = Urukhai()
urukhai.species()
