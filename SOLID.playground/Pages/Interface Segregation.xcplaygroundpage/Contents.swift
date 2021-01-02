//: The Interface Segregation Principle

import UIKit

protocol ImageProtocol {
    var base64Encoded: String { get }
    var jpegData: Data? { get}
    var pngData: Data? { get }

    init(data: Data)
    
    init(from url: URL) throws
    func save(to url: URL) throws
}












