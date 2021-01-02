/*:

## The Open/Closed Principle

- Entities should be open for extension but closed for modification

- Adds new behavior without modifying existing code

- Relies on OO concepts like inheritance, composition, and polymorphism

*/
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
