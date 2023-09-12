import UIKit

extension UIImage {
    static let defaultIconSize = CGSize(width: 40, height: 40)
    
    enum Icons: String {
        case chilly, hot, rain, snow, storm, sunny, windy
        var imageAsset: UIImage? {
            UIImage(named: rawValue)?.preparingThumbnail(of: UIImage.defaultIconSize)
        }
    }
}
