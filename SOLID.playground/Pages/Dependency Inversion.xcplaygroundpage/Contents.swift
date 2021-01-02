/*:

## The Dependency Inversion Principle

- Deals with reusability

- Avoids high-level -> low-level module dependency-modules should depend on abstractions

- Abstractions should not depend on details, but the other way around

*/
import Foundation

class Persistence {
    private var logger = Logger()
    
    func save(data: Data, to url: URL) throws {
        do {
            try data.write(to: url)
        }
        catch {
            logger.log("\(error)", severity: 10)
        }
    }
}

class Logger {
    func log(_ message: String, severity: Int) {
        print("\(message), severity: \(severity)")
    }
}







//: [Next](@next)
