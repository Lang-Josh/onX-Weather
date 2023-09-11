import UIKit

protocol ShowsWeatherData: ShowsMap {
    
    var apiHandler: APIHandler { get }
    var weatherStations: [WeatherStation] { get set }
    
    func refreshTodaysWeatherData()
    func refreshTomorrowssWeatherData()
}

extension ShowsWeatherData {
    
    internal func refreshTodaysWeatherData() {
        weatherStations.removeAll()
        weatherStations.append(contentsOf: apiHandler.fetchTodaysWeatherData())
    }
    
    internal func refreshTomorrowssWeatherData() {
        weatherStations.removeAll()
        weatherStations.append(contentsOf: apiHandler.fetchTomorrowsWeatherData())
    }
}
