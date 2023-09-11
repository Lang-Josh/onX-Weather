import Foundation

class APIHandler {
    typealias EmptyClosure = (() -> ())?
    
    private enum DummyWeatherDataDay {
        case today
        case tomorrow
        
        var dummyData: String {
            switch self {
            case .today:    return DummyData.todaysWeatherData
            case .tomorrow: return DummyData.tomorrowsWeatherData
            }
        }
    }
    
    private lazy var decoder: JSONDecoder = {
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        return jsonDecoder
    }()
    
    private let useDummyData: Bool = Environment.API.useDummyData
    private let serverUrlString: String = ""
}

// MARK: - Fetching Interface

extension APIHandler {
    func fetchTodaysWeatherData() -> [WeatherStation] {
        useDummyData ? fetchWeatherDataUsingDummyData(.today) : fetchWeatherData(serverUrlString)
    }
    
    func fetchTomorrowsWeatherData() -> [WeatherStation] {
        useDummyData ? fetchWeatherDataUsingDummyData(.tomorrow) : fetchWeatherData(serverUrlString)
    }
}

// MARK: - Fetching functions

extension APIHandler {
    
    private func fetchWeatherDataUsingDummyData(_ dummyDataDay: DummyWeatherDataDay) -> [WeatherStation] {
        do {
            guard let jsonData = dummyDataDay.dummyData.data(using: .utf8) else {
                throw NetworkError.notFound
            }
            return try decoder.decode([WeatherStation].self, from: jsonData)
        } catch {
            Log().warning("Failed to decode data.")
            return []
        }
    }
    
    private func fetchWeatherData(_ urlString: String) -> [WeatherStation] {
        do {
            guard let url = URL(string: urlString) else {
                Log().warning("Failed to create valid URL.")
                return []
            }
            let parsedData = try Data(contentsOf: url)
            return try decoder.decode([WeatherStation].self, from: parsedData)
        } catch {
            Log().error(NetworkError.notFound.errorDescription ?? "")
            return []
        }
    }
}

// MARK: - Response handling

extension APIHandler {
    
    enum NetworkError: Error, LocalizedError {
        case missingRequiredFields(String)
        case invalidParameters(operation: String, parameters: [Any])
        case badRequest
        case unauthorized
        case paymentRequired
        case forbidden
        case notFound
        case requestEntityTooLarge
        case unprocessableEntity
        case http(httpResponse: HTTPURLResponse, data: Data)
        case invalidResponse(Data)
        case deleteOperationFailed(String)
        case network(URLError)
        case unknown(Error?)
    }
    
    private func mapResponse(response: (data: Data, response: URLResponse)) throws -> Data {
        guard
            let httpResponse = response.response as? HTTPURLResponse
        else {
            return response.data
        }
        
        switch httpResponse.statusCode {
        case 200..<300: return response.data
        case 400:       throw NetworkError.badRequest
        case 401:       throw NetworkError.unauthorized
        case 402:       throw NetworkError.paymentRequired
        case 403:       throw NetworkError.forbidden
        case 404:       throw NetworkError.notFound
        case 413:       throw NetworkError.requestEntityTooLarge
        case 422:       throw NetworkError.unprocessableEntity
        default:        throw NetworkError.http(httpResponse: httpResponse, data: response.data)
        }
    }
}



