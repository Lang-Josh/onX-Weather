import UIKit
import MapKit

class WeatherStationAnnotationView: MKAnnotationView, BouncesWhenPresented {
    
    private let animationDuration: TimeInterval = 0.25
    private var calloutView: CustomCalloutView?
    private var weatherStation: WeatherStation?
    private let infoLabel: UILabel = UILabel.autolayout()
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
        let weatherStation = annotation as? WeatherStation
        image = weatherStation?.annotationImage
        addSubview(infoLabel)
        sizeToFit()
        canShowCallout = false
    }
    
    private func setupConstraints() {
        guard let calloutView else { return }
        calloutView.activateConstraints([
            calloutView.centerXAnchor.constraint(equalTo: centerXAnchor),
            calloutView.centerYAnchor.constraint(equalTo: centerYAnchor, constant: bounds.height)
        ])
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

// MARK: - Callout Handling

extension WeatherStationAnnotationView {
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        if selected {
            calloutView?.removeFromSuperview()
            let calloutView = CustomCalloutView(withWeatherStation: annotation as? WeatherStation)
            calloutView.add(to: self)
            self.calloutView = calloutView
            
            if animated {
                calloutView.alpha = 0
                UIView.animate(withDuration: animationDuration) {
                    calloutView.alpha = 1
                }
            }
        }
        else {
            guard let calloutView else { return }
            if animated {
                UIView.animate(withDuration: animationDuration, animations: {
                    calloutView.alpha = 0
                }, completion: { _ in
                    calloutView.removeFromSuperview()
                })
            } else {
                calloutView.removeFromSuperview()
            }
        }
    }
    
    // Make sure that if the cell is reused that we remove it from the super view.
    
    override func prepareForReuse() {
        super.prepareForReuse()
        calloutView?.removeFromSuperview()
    }
    
    // MARK: - Detect taps on callout
    
    // Per the Location and Maps Programming Guide, if you want to detect taps on callout,
    // you have to expand the hitTest for the annotation itself.
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        if let hitView = super.hitTest(point, with: event) { return hitView }
        if let calloutView = calloutView {
            let pointInCalloutView = convert(point, to: calloutView)
            return calloutView.hitTest(pointInCalloutView, with: event)
        }
        return nil
    }
}
