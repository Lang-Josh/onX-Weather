import UIKit

protocol MapViewControllerComposition: ShowsWeatherData {
    
    var locationHandler: LocationHandler { get set }
    var segmentedControl: UISegmentedControl { get }
    var annotationViews: [WeatherStationAnnotationView] { get }
    var selectedAnnotationView: WeatherStationAnnotationView? { get set }
    
    func setupView()
    func setupConstraints()
}
