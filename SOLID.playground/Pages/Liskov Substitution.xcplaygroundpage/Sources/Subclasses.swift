import Foundation

class Shape {
    func area() -> Double {
        return 0
    }
}

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
