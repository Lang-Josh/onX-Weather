import UIKit
import MapKit

class CustomCalloutView: UIView {
    private enum Constants {
        static let textSize: CGFloat = 8.0
        static let insetConstant: CGFloat = 16.0
        static let viewSpacing: CGFloat = 6.0
    }
    
    weak var weatherStation: WeatherStation?
    private let titleLabel: UILabel = UILabel.autolayout()
    private let subTitleLabel: UILabel = UILabel.autolayout()
    
    convenience init(withWeatherStation wStation: WeatherStation?) {
        self.init()
        translatesAutoresizingMaskIntoConstraints = false
        weatherStation = wStation
        setupViews()
        setupConstraints()
    }
    
    private func setupViews() {
        
        titleLabel.text = weatherStation?.title
        titleLabel.textColor = .FlatUI.clouds
        titleLabel.textAlignment = .center
        titleLabel.backgroundColor = .FlatUI.midnightBlue
        titleLabel.font = .preferredFont(forTextStyle: .callout).withSize(Constants.textSize)
        addSubview(titleLabel)
        
        subTitleLabel.text = weatherStation?.subtitle
        subTitleLabel.textColor = .FlatUI.clouds
        subTitleLabel.textAlignment = .center
        subTitleLabel.backgroundColor = .FlatUI.midnightBlue
        subTitleLabel.font = .preferredFont(forTextStyle: .callout).withSize(Constants.textSize)
        addSubview(subTitleLabel)
    }
    
    private func setupConstraints() {
        titleLabel.activateConstraints([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: Constants.insetConstant),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.insetConstant),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.insetConstant)
        ])
        
        subTitleLabel.activateConstraints([
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: Constants.viewSpacing),
            subTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: Constants.insetConstant),
            subTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -Constants.insetConstant)
        ])
    }
    
    /// Add this `CalloutView` to an annotation view (i.e. show the callout on the map above the pin)
    ///
    /// - Parameter annotationView: The annotation to which this callout is being added.
    func add(to annotationView: MKAnnotationView) {
        annotationView.addSubview(self)
        activateConstraints([
            bottomAnchor.constraint(equalTo: annotationView.topAnchor, constant: annotationView.calloutOffset.y),
            centerXAnchor.constraint(equalTo: annotationView.centerXAnchor, constant: annotationView.calloutOffset.x)
        ])
    }
}
