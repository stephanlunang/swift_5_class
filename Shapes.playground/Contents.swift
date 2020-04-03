import UIKit

class Shape {
    var a: Double
    var b: Double
    
    init(a: Double, b: Double) {
        self.height = height
        self.width = width
    }
    
    func calculateArea(a: Double, b: Double) -> Double {
        return 0
    }
    
    func calculateParameter(a: Double, b: Double) -> Double {
        return 0
    }
}

class Triangle: Shape {
    override func calculateArea(a: Double, b: Double) -> Double {
        return (a * b)/2
    }
    override func calculateParameter(a: Double, b: Double) -> Double {
        let cSquared = pow(a, 2) + pow(b, 2)
        let c = pow(cSquared, 0.5)
        return a + b + c
    }
}

class Circle: Shape {
    override func calculateArea(a: Double, b: Double) -> Double {
        let radius = 0.5 * a
        return (3.14 * pow(radius, 2))
    }
    override func calculateParameter(a: Double, b: Double) -> Double {
        let radius = 0.5 * a
        return 2 * 3.14 * radius
    }
}

class Square: Shape {
    override func calculateArea(a: Double, b: Double) -> Double {
        return a * b
    }
    override func calculateParameter(a: Double, b: Double) -> Double {
        return a * 2 + b * 2
    }
}
