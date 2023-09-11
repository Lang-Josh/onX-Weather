import Foundation

extension NSObject {
    /// Use this property to find the dynamic type of a value, particularly when the dynamic
    /// type is different from the static type. The static type of a value is the known, compile-time
    /// type of the value. The dynamic type of a value is the value’s actual type at run-time,
    /// which can be a subtype of its concrete type.
    ///
    /// - Note: This is used primarily for logging purposes as it uses Reflection.
    ///
    /// - Returns: The dynamic type, which is a metatype instance.
    var className: String {
        String(describing: type(of: self))
    }
}
