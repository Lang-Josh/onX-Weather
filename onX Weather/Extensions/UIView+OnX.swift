import UIKit

extension UIView {
    
    /// Creates an instance of `Self` and sets its `translatesAutoresizingMaskIntoConstraints` to false
    ///  and `accessibilityIdentifier` to it's `className` before returning the new instance to the caller.
    ///
    /// - Returns: A new instance of `Self.`
    class func autolayout() -> Self {
        let view = Self()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.accessibilityIdentifier = view.className
        return view
    }
    /// Prepares current view for constraints and activates the specified constraints.
    ///
    /// - Parameter constraints: Constraints to activate
    func activateConstraints(_ constraints: [NSLayoutConstraint]) {
        NSLayoutConstraint.activate(constraints)
    }
    /// Set the edge constraints of this view to that of the passed in view.
    ///
    /// - Parameters:
    ///   - view: The view to get edge constraints from.
    ///   - insets: The insets that determine the constants for each of the edge constraints. Defaults to '.zero'.
    func constrain(withinView view: UIView, insets: UIEdgeInsets = .zero) {
        activateConstraints([
            topAnchor.constraint(equalTo: view.topAnchor, constant: insets.top),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: insets.left),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -insets.bottom),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -insets.right)
        ])
    }
    /// Adds a view as a subview and adds AutoLayout constraints to the view then pins each edge to its superview.
    ///
    /// - Parameters:
    ///   - view: The view to add as a subview.
    ///   - insets: The insets that determine the constants for each of the edge constraints. Default to '.zero'.
    func addSubview(_ view: UIView, insets: UIEdgeInsets = .zero) {
        addSubview(view)
        view.constrain(withinView: self, insets: insets)
    }
    /// Adds a view as a subview and adds equal insets to all four sides.
    ///
    /// - Parameters:
    ///   - view: The view to add as a subview.
    ///   - equalPadding: The inset to add on all four sides of the subview.
    func addSubview(_ view: UIView, equalPadding: CGFloat) {
        addSubview(view, insets: UIEdgeInsets(top: equalPadding, left: equalPadding, bottom: equalPadding, right: equalPadding))
    }
}
