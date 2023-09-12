import UIKit
import MapKit

class MapViewController: BaseViewController, MapViewControllerComposition {
    private enum Constants {
        static let segmentTitles: [String] = ["TODAY", "TOMORROW"]
        static let segmentedControlBorderWidth: CGFloat = 5.0
        static let defaultSafeAreaPadding: CGFloat = 16.0
    }
    
    var weatherStations: [WeatherStation] = []
    internal var selectedAnnotationView: WeatherStationAnnotationView? = nil
    internal var apiHandler = APIHandler()
    internal var locationHandler = LocationHandler()
    internal var annotationViews: [WeatherStationAnnotationView] {
        mapView.annotations.compactMap { mapView.view(for: $0) as? WeatherStationAnnotationView }
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
        sc.segmentTitles = Constants.segmentTitles
        sc.selectedSegmentIndex = 0
        sc.setTitleTextAttributes([
            .foregroundColor : UIColor.FlatUI.clouds,
            .font : UIFont.preferredFont(forTextStyle: .headline)
        ], for: .normal)
        sc.selectedSegmentTintColor = .FlatUI.peterRiver
        sc.backgroundColor = .FlatUI.wetAsphalt
        sc.layer.borderColor = UIColor.FlatUI.wetAsphalt.cgColor
        sc.layer.borderWidth = Constants.segmentedControlBorderWidth
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
    
    func applicationDidBecomeActive() {
        segmentedControl.selectedSegmentIndex = 0
        resetMap()
        clearAndUpdateAnnotationsForVisibleRegion()
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
            segmentedControl.topAnchor.constraint(equalTo: mapView.safeAreaLayoutGuide.topAnchor, constant: Constants.defaultSafeAreaPadding),
            segmentedControl.trailingAnchor.constraint(equalTo: mapView.trailingAnchor,  constant: -Constants.defaultSafeAreaPadding),
            segmentedControl.leadingAnchor.constraint(equalTo: mapView.leadingAnchor, constant: Constants.defaultSafeAreaPadding)
        ])
    }
}

// MARK: - MKMapViewDelegate

extension MapViewController {

    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        UIView.animate(withDuration: 0.15, delay: .zero, options: [.curveEaseOut], animations: { [weak self] in
            self?.selectedAnnotationView?.transform = .identity
            view.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
        }, completion: { [weak self] success in
            guard success, let annotationView = view as? WeatherStationAnnotationView else { return }
            self?.selectedAnnotationView = self?.selectedAnnotationView === annotationView ? nil : annotationView
        })
    }
    
    func mapView(_ mapView: MKMapView, didDeselect view: MKAnnotationView) {
        
        var callout = view.subviews.filter({ (subview) -> Bool in
            subview is CustomCalloutView
        }).first
        
        callout?.removeFromSuperview()
        callout = nil
        view.constraints.forEach{ view.removeConstraint($0) }
    }
    
    func mapView(_ mapView: MKMapView, regionDidChangeAnimated animated: Bool) {
        clearAndUpdateAnnotationsForVisibleRegion()
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation { return nil }
        let annotationView = WeatherStationAnnotationView(annotation: annotation, reuseIdentifier: "WeatherStationAnnotationView")
        return annotationView
    }
    
    func mapView(_ mapView: MKMapView, annotationView view: MKAnnotationView, calloutAccessoryControlTapped control: UIControl) {
        Log().debug("mapView(_:annotationView:calloutAccessoryControlTapped)")
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
