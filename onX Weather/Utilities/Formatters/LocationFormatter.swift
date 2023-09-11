import Foundation

struct LocationFormatter {
    private enum Constants {
        static let secondsPerMinute: Double = 60.0
        static let secondsPerHour: Double = 3600.0
    }
    
    func convertToDecimalNotation(_ degrees: Double, minutes: Double, seconds: Double) -> Double {
        degrees + (minutes / Constants.secondsPerMinute) + (seconds / Constants.secondsPerHour)
    }
}
