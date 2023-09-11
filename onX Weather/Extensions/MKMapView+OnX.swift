import Foundation
import MapKit

extension MKMapView {
    private enum Constants {
        static let fatalErrorMessage: String = "Couldn't find MKAnnotationView for "
    }
}

// MARK: - dequeue and Register AnnotationView

extension MKMapView {
    
    func dequeueReusableAnnotationView<T: MKAnnotationView>(withClass name: T.Type, for annotation: MKAnnotation) -> T? {
        
        let annotationViewClassName = String(describing: name)
        
        guard
            let annotationView = dequeueReusableAnnotationView(withIdentifier: annotationViewClassName, for: annotation) as? T
        else {
            let fatalErrorMessage = Constants.fatalErrorMessage + annotationViewClassName
            Log().error(fatalErrorMessage)
            fatalError(fatalErrorMessage)
        }
        return annotationView
    }
    
    func register<T: MKAnnotationView>(annotationViewWithClass name: T.Type) {
        register(T.self, forAnnotationViewWithReuseIdentifier: String(describing: name))
    }
}
