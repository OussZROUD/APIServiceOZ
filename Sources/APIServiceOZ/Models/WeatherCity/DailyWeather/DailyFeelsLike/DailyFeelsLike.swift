//
//  File.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

public struct DailyFeelsLike: Codable {
    
    // MARK: -  PROPERTIES
    public var day: Double
    public var night: Double
    public var evening: Double
    public var morning: Double
    
    public enum CodingKeys: String, CodingKey {
           case evening = "eve"
           case morning = "morn"
           case day, night
       }
}
