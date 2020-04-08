import UIKit

func fizzBuzz () {
    for i in 1...100 {
        if i % 15 == 0 {
            print("FizzBuzz")
        } else if i % 3 == 0 {
            print("Fizz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else {
            print("\(i)")
        }
    }
}

fizzBuzz()


let array = [1, 2, 3]
array[1]


enum Device: Int {
    case iPhone
    case Android
    case MacBook
    case Windows
}

var chosen: Device = .MacBook
let result = chosen.rawValue
print(result)


var fullName = "empty"
var firstName: String?
var lastName: String?

firstName = "Jan"

if let first = firstName, let last = lastName {
    fullName = "\(first) \(last)"
}

print(fullName)


var amount = 0

for x in 0..<10 {
    if x % 2 == 0 {
        amount += 3
        print(x)
        print(amount)
    }
}
print(amount)


var sum = 0
for i in 0...20 {
    sum += 1
}
print(sum)
