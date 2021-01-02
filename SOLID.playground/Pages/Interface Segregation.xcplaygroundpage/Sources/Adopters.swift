import Foundation

class EncodableImage: ImageEncoding {
    var data: Data
    
    required init(data: Data) {
        self.data = data
    }
}

class Base64EncodablePersistableImage: Base64Encoding, ImageEncoding {
    var data: Data
    
    required init(data: Data) {
        self.data = data
    }
}













