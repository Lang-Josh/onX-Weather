import Foundation

struct GeographicalCoordinateSystem {
    enum Components {
        case degrees(Double)
        case minutes(Double)
        case seconds(Double)
    }
    
    private let locationFormatter = LocationFormatter()
    private let degrees: Double
    private let minutes: Double
    private let seconds: Double
    
    init(degrees: Double, minutes: Double, seconds: Double = .zero) {
        self.degrees = degrees
        self.minutes = minutes
        self.seconds = seconds
    }
    
    init(components: [Components]) {
        var deg: Double = .zero
        var min: Double = .zero
        var sec: Double = .zero
        
        components.forEach {
            switch $0 {
            case .degrees(let degree):  deg = degree
            case .minutes(let minute):  min = minute
            case .seconds(let second):  sec = second
            }
        }
        
        self.init(degrees: deg, minutes: min, seconds: sec)
    }
}

// MARK: - Formatting

extension GeographicalCoordinateSystem {
    
    func decimalNotation() -> Double {
        locationFormatter.convertToDecimalNotation(degrees, minutes: minutes, seconds: seconds)
    }
}
