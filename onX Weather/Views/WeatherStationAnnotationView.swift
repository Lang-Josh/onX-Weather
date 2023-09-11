import UIKit
import MapKit

class WeatherStationAnnotationView: MKAnnotationView, BouncesWhenPresented {
    
    private var weatherStation: WeatherStation?
    internal var timingFunctionEaseInEaseOut = CAMediaTimingFunction(name: .easeInEaseOut)
    
    override init(annotation: MKAnnotation?, reuseIdentifier: String?) {
        super.init(annotation: annotation, reuseIdentifier: reuseIdentifier)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
}

// MARK: - Setup

extension WeatherStationAnnotationView {
    
    private func setupViews() {
        image = (annotation as? WeatherStation)?.annotationImage
        sizeToFit()
    }
}

// MARK: - BouncesWhenPresented

extension WeatherStationAnnotationView {
    
    override func willMove(toSuperview newSuperview: UIView?) {
        super.willMove(toSuperview: newSuperview)
        bounce()
    }
    
    internal func bounce() {
        DispatchQueue.main.async { [weak self] in
            guard let self else { return }
            self.layer.add(self.bounceAnimation, forKey: "bounce")
        }
    }
}
