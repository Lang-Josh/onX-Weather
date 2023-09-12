import Foundation

extension String {
    var isNotEmpty: Bool { !isEmpty }
    func truncateFilePathPrefix() -> String {
        components(separatedBy: "/").last?.components(separatedBy: ".").first ?? self
    }
}
