import Foundation

enum Environment {
    enum API {
        static let useDummyData: Bool = true
    }
}

// MARK: - Global Typealiases
// In alphabetical order

typealias AnimationClosure = ((Bool) -> Void)?
typealias EmptyClosure = (() -> ())
