//
//  WeatherInformation.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

public struct WeatherInformation: Codable {
    
    // MARK: - PROPERTIES
    public var id: Int
    public var main: String
    public var description: String
    public var icon: String
}
