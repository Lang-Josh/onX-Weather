import UIKit
import MapKit

class MapViewController: BaseViewController, MapViewControllerComposition {
    
    var weatherStations: [WeatherStation] = []
    internal var selectedAnnotationView: WeatherStationAnnotationView? = nil // TODO: Present Callout
    internal var apiHandler = APIHandler()
    internal var locationHandler = LocationHandler()
    internal var annotationViews: [WeatherStationAnnotationView] {
        mapView.annotations.compactMap {
            mapView.view(for: $0) as? WeatherStationAnnotationView
        }
    }
    internal lazy var mapView: MKMapView = {
        let map: MKMapView = MKMapView.autolayout()
        map.delegate = self
        map.isRotateEnabled = false
        map.showsScale = true
        map.showsUserLocation = false
        map.register(annotationViewWithClass: WeatherStationAnnotationView.self)
        return map
    }()
    internal lazy var segmentedControl: UISegmentedControl = {
        let sc: UISegmentedControl = UISegmentedControl.autolayout()
        sc.segmentTitles = ["TODAY", "TOMORROW"]
        sc.selectedSegmentIndex = 0
        sc.setTitleTextAttributes([
            .foregroundColor : UIColor.FlatUI.clouds,
            .font : UIFont.preferredFont(forTextStyle: .headline)
        ], for: .normal)
        
        sc.selectedSegmentTintColor = .FlatUI.peterRiver
        sc.backgroundColor = .FlatUI.wetAsphalt
        sc.layer.borderColor = UIColor.FlatUI.wetAsphalt.cgColor
        sc.layer.borderWidth = 5.0
        
        sc.addTarget(self, action: #selector(clearAndUpdateAnnotationsForVisibleRegion), for: .valueChanged)
        return sc
    }()
}

// MARK: - LifeCycle Events

extension MapViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupConstraints()
        resetMap()
    }
}

// MARK: - Setup

extension MapViewController {
    
    func setupView() {
        view.addSubview(mapView)
        mapView.addSubview(segmentedControl)
    }
    
    func setupConstraints() {
        mapView.constrain(withinView: view)
        
        segmentedControl.activateConstraints([
            segmentedControl.topAnchor.constraint(equalTo: mapView.safeAreaLayoutGuide.topAnchor, constant: 16.0),
            segmentedControl.trailingAnchor.constraint(equalTo: mapView.trailingAnchor,  constant: -16.0)
        ])
    }
}

// MARK: - MKMapViewDelegate

extension MapViewController {
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        // FIXME: Handle taps
    }
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        clearAndUpdateAnnotationsForVisibleRegion()
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation { return nil }
        let annotationView = WeatherStationAnnotationView(annotation: annotation, reuseIdentifier: "WeatherStationAnnotationView")
        annotationView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(pinTapped(_:))))
        return annotationView
    }
    
    @objc func pinTapped(_ sender: UITapGestureRecognizer) {
        guard let annotationView = sender.view as? WeatherStationAnnotationView else { return }
        selectedAnnotationView = selectedAnnotationView === annotationView ? nil : annotationView
    }
}

// MARK: - Update Annotations

extension MapViewController {
    
    internal func updateAnnotations() {
        weatherStations.forEach {
            if mapView.visibleMapRect.contains($0.mapPoint) {
                mapView.addAnnotation($0)
            }
        }
    }
    
    @objc private func clearAndUpdateAnnotationsForVisibleRegion() {
        mapView.removeAnnotations(mapView.annotations)
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:     refreshTodaysWeatherData()
        case 1:     refreshTomorrowssWeatherData()
        default:    break
        }
        
        updateAnnotations()
    }
}
