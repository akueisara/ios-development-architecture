import UIKit

// Default behavior implemented in extensions

extension Base64Encoding {
    var base64Encoded: String {
        return self.data.base64EncodedString()
    }
}

extension ImageEncoding {
    var jpegData: Data? {
        guard let uiImage = UIImage.init(data: self.data),
			  let jpegData = uiImage.jpegData(compressionQuality: 1) else {
                return nil
        }
        return jpegData
    }
    
    var pngData: Data? {
        guard let uiImage = UIImage.init(data: self.data),
			  let pngData = uiImage.pngData() else {
                return nil
        }
        return pngData
    }
}
