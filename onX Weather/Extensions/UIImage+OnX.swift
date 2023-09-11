import Foundation
import UIKit

extension UIImage {
    
    enum Icons: String {
        case chilly
        case hot
        case rain
        case snow
        case storm
        case sunny
        case windy
        
        var asset: UIImage? {
            guard
                let image = UIImage(named: self.rawValue)
            else { return nil }
            let imageSize = CGSize(width: 70, height: 70)
            return image.preparingThumbnail(of: imageSize)
        }
    }
}
