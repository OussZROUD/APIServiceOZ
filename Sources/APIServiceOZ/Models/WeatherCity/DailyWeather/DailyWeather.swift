//
//  DailyWeather.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

public struct DailyWeather: Codable {
    
    // MARK: - PROPERTIES
    public var date: Double
    public var sunrise: Double
    public var sunset: Double
    public var temperature: DailyTemperature
    public var feelsLike: DailyFeelsLike
    public var pressure: Double
    public var humidity: Double
    public var dewPoint: Double
    public var uvi: Double
    public var clouds: Double
    public var pop: Double
    public var windSpeed: Double
    public var windDeg: Double
    public var weather: [WeatherInformation]
    public var rain: Double?
    
    public enum CodingKeys: String, CodingKey {
        case date = "dt"
        case temperature = "temp"
        case feelsLike = "feels_like"
        case dewPoint = "dew_point"
        case windSpeed = "wind_speed"
        case windDeg = "wind_deg"
        case sunrise, sunset, pressure, humidity, uvi, clouds, pop, weather, rain
    }
}
