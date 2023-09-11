import Foundation

class Log {
    enum Level {
        case api
        case debug
        case error
        case note
        case warning
        
        var description: String {
            switch self {
            case .api:      return "API"
            case .debug:    return "DEBUG"
            case .error:    return "ERROR"
            case .note:     return "NOTE"
            case .warning:  return "WARNING"
            }
        }
        
        var marker: String {
            switch self {
            case .api:      return "🛰️"
            case .debug:    return "🐛"
            case .error:    return "💥"
            case .note:     return "📘"
            case .warning:  return "⚠️"
            }
        }
    }
    
    private let formatter: DateFormatter = DateFormatter(withFormat: "H:m:ss.SSS")
    private lazy var date: String = {
        formatter.string(from: NSDate.now)
    }()
}

// MARK: - Interface

extension Log {
    func api(_ message: String = "", file: String = #file, line: Int = #line, function: String = #function) {
        formatAndPrint(message, file: file, line: line, function: function, level: .api)
    }
    
    func note(_ message: String = "", file: String = #file, line: Int = #line, function: String = #function) {
        formatAndPrint(message, file: file, line: line, function: function, level: .note)
    }
    
    func debug(_ message: String = "", file: String = #file, line: Int = #line, function: String = #function) {
        formatAndPrint(message, file: file, line: line, function: function, level: .debug)
    }
    
    func warning(_ message: String = "", file: String = #file, line: Int = #line, function: String = #function) {
        formatAndPrint(message, file: file, line: line, function: function, level: .warning)
    }
    
    func error(_ message: String = "", file: String = #file, line: Int = #line, function: String = #function) {
        formatAndPrint(message, file: file, line: line, function: function, level: .error)
    }
}

// MARK: - Formatting

private extension Log {
    
    func formatAndPrint(_ message: String, file: String, line: Int, function: String, level: Level) {
        var prefix: String = "\(date) \(level.marker) [\(level.description)] \(file.truncateFilePathPrefix()).\(function) Line:\(line)"
        if message.isNotEmpty { prefix.append(" - \(message)") }
        print(prefix)
    }
}
