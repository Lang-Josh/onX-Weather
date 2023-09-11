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

// MARK: - Glyph Image Business Logic

extension WeatherStation {
    
    var annotationGlyphImage: OriginalUIImage? {
        let temp = temperature ?? .zero
        let windSpeed = windSpeed ?? .zero
        
        switch true {
        case temp > 75.0:                   return OriginalUIImage(image: .Icons.hot.asset)
        case temp < 30.0:                   return OriginalUIImage(image: .Icons.snow.asset)
        case temp < 50.0:                   return OriginalUIImage(image: .Icons.chilly.asset)
        case chanceOfPrecipitation > 50 && windSpeed > 10.0:
                                            return OriginalUIImage(image: .Icons.storm.asset)
        case chanceOfPrecipitation > 50:    return OriginalUIImage(image: .Icons.rain.asset)
        case windSpeed > 10.0:              return OriginalUIImage(image: .Icons.windy.asset)
        default:                            return OriginalUIImage(image: .Icons.sunny.asset)
        }
    }
}
