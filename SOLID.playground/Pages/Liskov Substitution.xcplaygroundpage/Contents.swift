/*:

## The Liskov Substitution Principle

Ability to replace references to base classes with objects of derived classes

*/

import Foundation

class Shape {
    func area() -> Double {
        return 0
    }
}

var shapes = [Shape]()














class Rectangle: Shape {
    private var l, w: Double
    
    override func area() -> Double {
        return l * w
    }
    
    init(length: Double, width: Double) {
        l = length
        w = width
    }
}

class Square: Shape {
    private var a: Double
    
    override func area() -> Double {
        return a * a
    }
    
    init(side: Double) {
        a = side
    }
}

class Circle: Shape {
    private var r: Double
    
    override func area() -> Double {
        return Double.pi * r * r
    }
    
    init(radius: Double) {
        r = radius
    }
}

let square = Square(side: 1)
let rectangle = Rectangle(length: 2, width: 3)
let circle = Circle(radius: 2)

shapes.append(square)
shapes.append(rectangle)
shapes.append(circle)
// 1 + 6 + 12.56
let totalArea = shapes.reduce(0, { $0 + $1.area() } )
print(totalArea)
// Output: 19.5663706143592
