import MapKit

protocol ShowsMap: MKMapViewDelegate {
    
    var mapView: MKMapView { get }
    var locationHandler: LocationHandler { get }
    
    func resetMap()
}

extension ShowsMap {
    
    internal func resetMap() {
        let region = MKCoordinateRegion(center: locationHandler.startingLocation.coordinate,
                                        span: locationHandler.startingCoordinateSpan)
        mapView.setRegion(region, animated: true)
        mapView.setCenter(locationHandler.startingLocation.coordinate, animated: true)
    }
}
