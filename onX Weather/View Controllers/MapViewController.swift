import UIKit
import MapKit

class MapViewController: BaseViewController, ShowsWeatherData {
    
    internal let apiHandler = APIHandler()
    internal var locationHandler = LocationHandler()
    var weatherStations: [WeatherStation] = []
    
    internal lazy var mapView: MKMapView = {
        let map: MKMapView = MKMapView.autolayout()
        map.delegate = self
        map.register(annotationViewWithClass: MKMarkerAnnotationView.self)
        map.isRotateEnabled = false
        return map
    }()
    
    private lazy var segmentedControl: UISegmentedControl = {
        let sc: UISegmentedControl = UISegmentedControl.autolayout()
        sc.segmentTitles = ["TODAY", "TOMORROW"]
        sc.selectedSegmentIndex = 0
        sc.setTitleTextAttributes([
            .foregroundColor : UIColor.FlatUI.clouds
        ], for: .normal)
        sc.selectedSegmentTintColor = .FlatUI.flatOrange
        sc.backgroundColor = .FlatUI.emerald
        sc.addTarget(self, action: #selector(clearAndUpdateAnnotationsForVisibleRegion), for: .valueChanged)
        return sc
    }()
}

// MARK: - LifeCycle Events

extension MapViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(mapView)
        mapView.addSubview(segmentedControl)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        mapView.constrain(withinView: view)
        
        segmentedControl.activateConstraints([
            segmentedControl.topAnchor.constraint(equalTo: mapView.safeAreaLayoutGuide.topAnchor, constant: 15.0),
            segmentedControl.trailingAnchor.constraint(equalTo: mapView.trailingAnchor, constant: -15.0)
        ])
        
        resetMap()
        clearAndUpdateAnnotationsForVisibleRegion()
    }
}

// MARK: - MKMapViewDelegate

extension MapViewController {
    
    func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
        clearAndUpdateAnnotationsForVisibleRegion()
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation { return nil }
        
        var annotationView = mapView.dequeueReusableAnnotationView(withClass: MKMarkerAnnotationView.self, for: annotation)
        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "MKMarkerAnnotationView")
        } else {
            annotationView?.annotation = annotation
        }
        
        let image = (annotation as? WeatherStation)?.annotationGlyphImage
        annotationView?.glyphImage = image
        annotationView?.selectedGlyphImage = image
        annotationView?.canShowCallout = true
        annotationView?.markerTintColor = .clear
        annotationView?.animatesWhenAdded = false

        return annotationView
    }
}

extension MapViewController {
    
    private func updateAnnotations() {
        weatherStations.forEach {
            if mapView.visibleMapRect.contains($0.mapPoint) {
                mapView.addAnnotation($0)
            }
        }
    }
    
    @objc private func clearAndUpdateAnnotationsForVisibleRegion() {
        mapView.removeAnnotations(mapView.annotations)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            refreshTodaysWeatherData()
        case 1:
            refreshTomorrowssWeatherData()
        default:
            return
        }
        
        updateAnnotations()
    }
}

