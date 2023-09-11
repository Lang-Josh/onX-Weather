import UIKit

extension UIColor {
    
    /// Create Color from RGB values with optional alpha.
    ///
    /// - Parameters:
    ///   - red: red component.
    ///   - green: green component.
    ///   - blue: blue component.
    ///   - alpha: optional alpha value (default is 1).
    convenience init?(red: Int, green: Int, blue: Int, alpha: CGFloat = 1) {
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: alpha)
    }
    
    /// Create Color from hexadecimal value with optional alpha.
    ///
    /// - Parameters:
    ///   - hex: hex Int (example: 0xDECEB5).
    ///   - alpha: optional alpha value (default is 1).
    convenience init?(hex: Int, alpha: CGFloat = 1) {
        let red = (hex >> 16) & 0xFF
        let green = (hex >> 8) & 0xFF
        let blue = hex & 0xFF
        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
}

// MARK: - Flat UI colors

extension UIColor {
    /// Flat UI colors
    ///
    /// Link: http://www.flatuicolors.com
    enum FlatUI {/// hex #1ABC9C
        static let turquoise = UIColor(hex: 0x1ABC9C)!
        /// hex #16A085
        static let greenSea = UIColor(hex: 0x16A085)!
        /// hex #2ECC71
        static let emerald = UIColor(hex: 0x2ECC71)!
        /// hex #27AE60
        static let nephritis = UIColor(hex: 0x27AE60)!
        /// hex #3498DB
        static let peterRiver = UIColor(hex: 0x3498DB)!
        /// hex #2980B9
        static let belizeHole = UIColor(hex: 0x2980B9)!
        /// hex #9B59B6
        static let amethyst = UIColor(hex: 0x9B59B6)!
        /// hex #8E44AD
        static let wisteria = UIColor(hex: 0x8E44AD)!
        /// hex #34495E
        static let wetAsphalt = UIColor(hex: 0x34495E)!
        /// hex #2C3E50
        static let midnightBlue = UIColor(hex: 0x2C3E50)!
        /// hex #F1C40F
        static let sunFlower = UIColor(hex: 0xF1C40F)!
        /// hex #F39C12
        static let flatOrange = UIColor(hex: 0xF39C12)!
        /// hex #E67E22
        static let carrot = UIColor(hex: 0xE67E22)!
        /// hex #D35400
        static let pumpkin = UIColor(hex: 0xD35400)!
        /// hex #E74C3C
        static let alizarin = UIColor(hex: 0xE74C3C)!
        /// hex #C0392B
        static let pomegranate = UIColor(hex: 0xC0392B)!
        /// hex #ECF0F1
        static let clouds = UIColor(hex: 0xECF0F1)!
        /// hex #BDC3C7
        static let silver = UIColor(hex: 0xBDC3C7)!
        /// hex #7F8C8D
        static let asbestos = UIColor(hex: 0x7F8C8D)!
        /// hex #95A5A6
        static let concrete = UIColor(hex: 0x95A5A6)!
    }
}
