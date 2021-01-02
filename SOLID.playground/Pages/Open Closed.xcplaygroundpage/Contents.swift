//: The Open/Closed Principle
import UIKit

class Shape {
    //...
}

extension Shape: CustomStringConvertible {
    public var description: String {
        return "Shape base class"
    }
}

let shape = Shape()
print(shape)










//: [Next](@next)
