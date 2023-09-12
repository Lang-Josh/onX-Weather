import CoreLocation
import MapKit

class LocationHandler {
    private enum Constants {
        static let latitudeDefaultDeltaValue: CLLocationDegrees = 25.0
        static let longitudeDefaultDeltaValue: CLLocationDegrees = 20.0
        static let startingLatitudeComponents: [GeographicalCoordinateSystem.Components] = [.degrees(40.0), .minutes(55.0), .seconds(16.4)]
        static let startingLongitudeComponents: [GeographicalCoordinateSystem.Components] = [.degrees(-108.0), .minutes(5.0), .seconds(43.8)]
    }
    
    var startingCoordinateSpan: MKCoordinateSpan {
        MKCoordinateSpan(latitudeDelta: Constants.latitudeDefaultDeltaValue, longitudeDelta: Constants.longitudeDefaultDeltaValue)
    }
    
    var startingLocation: CLLocation {
        CLLocation(latitude: startingLatitude, longitude: startingLongitude)
    }
    
    private var startingLatitude: Double {
        GeographicalCoordinateSystem(components: Constants.startingLatitudeComponents).decimalNotation()
    }
    
    private var startingLongitude: Double {
        GeographicalCoordinateSystem(components: Constants.startingLongitudeComponents).decimalNotation()
    }
}
