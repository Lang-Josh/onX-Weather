import Foundation

extension DateFormatter {
    
    convenience init(withFormat format: String) {
        self.init()
        dateFormat = format
    }
}
