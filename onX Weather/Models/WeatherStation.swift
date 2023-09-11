import Foundation
import CoreLocation
import MapKit

class WeatherStation: NSObject, Codable {
    var id                    : String
    var name                  : String? = "Unknown"
    var longitude             : Double
    var latitude              : Double
    var temperature           : Double? = nil
    var windSpeed             : Double? = nil
    var windDirection         : Int?    = nil
    var chanceOfPrecipitation : Int     = .zero
}

extension WeatherStation: MKAnnotation {
    
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    var title: String? {
        guard let name else { return nil }
        return "\(name) (\(id))"
    }
    var subtitle: String? {
        guard let temp = temperature?.rounded(toPlaces: 1) else { return nil }
        return "\(temp)℉"
    }
    
    var mapPoint: MKMapPoint {
        MKMapPoint(coordinate)
    }
}

// MARK: - Image Business Logic

extension WeatherStation {
    /// This is my own business logic. It doesn't have tp make perfect sense.
    /// It is more important to get the idea of what it is doing.
    var annotationImage: UIImage? {
        let temp = temperature ?? .zero
        let windSpeed = windSpeed ?? .zero
        
        switch true {
        case temp > 75.0:
            return .Icons.hot.imageAsset
        
        case temp < 30.0:
            return .Icons.snow.imageAsset
        
        case temp < 50.0:
            return .Icons.chilly.imageAsset
        
        case chanceOfPrecipitation > 50 && windSpeed > 10.0:
            return .Icons.storm.imageAsset
        
        case chanceOfPrecipitation > 50:
            return .Icons.rain.imageAsset
        
        case windSpeed > 10.0:
            return .Icons.windy.imageAsset
        
        default:
            return .Icons.sunny.imageAsset
        }
    }
}
