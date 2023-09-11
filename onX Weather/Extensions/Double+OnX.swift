import Foundation

extension Double {
    
    /// SwifterSwift: Rounds the double to decimal places value
    ///
    ///   ````
    ///   let unformattedDouble: Double = 12.191986
    ///   print("\(unformattedDouble.rounded(toPlaces: 2))")
    ///
    ///   // prints "12.19"
    ///   ````
    /// - Parameters:
    ///   - toPlaces: Number of decimal places to display.
    /// - Returns: Rounded result
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
