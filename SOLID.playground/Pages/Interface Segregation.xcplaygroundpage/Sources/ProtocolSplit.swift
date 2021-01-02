import Foundation

protocol ImageProtocol {
    var data: Data { get }
    init(data: Data)
}

protocol Base64Encoding: ImageProtocol {
    var base64Encoded: String { get }
}

protocol ImageEncoding: ImageProtocol {
    var jpegData: Data? { get}
    var pngData: Data? { get }
}

protocol ImagePersistence: ImageProtocol {
    func load(from url: URL) -> Self?
    func save(to url: URL) throws
}








