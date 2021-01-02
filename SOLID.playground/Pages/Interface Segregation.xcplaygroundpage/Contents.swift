/*:

## The Interface Segregation Principle

- Deals with the problem of "fat" interfaces

- Clients shouldn't depend upon interfaces they don't use

*/
import UIKit

protocol ImageProtocol {
    var base64Encoded: String { get }
    var jpegData: Data? { get}
    var pngData: Data? { get }

    init(data: Data)
    
    init(from url: URL) throws
    func save(to url: URL) throws
}












