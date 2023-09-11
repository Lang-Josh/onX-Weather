import UIKit

class OriginalUIImage: UIImage {
    
    convenience init?(image: UIImage?) {
        guard
            let cgImage = image?.cgImage
        else {
            return nil
        }
        self.init(cgImage: cgImage)
    }
    
    override func withRenderingMode(_ renderingMode: UIImage.RenderingMode) -> UIImage {
        super.withRenderingMode(.alwaysOriginal)
    }
}
