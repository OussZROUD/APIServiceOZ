//
//  WeatherCity.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

// WS response for  a weather of city Rquest
// WeatherCity

public struct WeatherCity: Codable, Equatable {
    
    // MARK: - PAROPERTIES
    public var latitude: Double
    public var longitude: Double
    public var currentDay: CurrentDayWeather
    public var daily: [DailyWeather]
    
    public enum CodingKeys: String, CodingKey {
        case latitude = "lat"
        case longitude = "lon"
        case currentDay = "current"
        case daily
    }
    
    // MARK: -  EQUATABLE PROTOCCOL METHOD
    public static func == (lhs: WeatherCity, rhs: WeatherCity) -> Bool {
        return false
    }
}
