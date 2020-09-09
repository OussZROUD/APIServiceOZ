//
//  APIError.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

public enum APIError: Swift.Error {
    case dataFailed
    case parsingError
    case invalidURL(url: String)
    case invalidURLComponents(url: String)
    
    var message: String {
        switch self {
        case .dataFailed:
            return "Can't parse data because its nil"
        case .parsingError:
            return "Can't parse data because object recived does not conform model expected"
        case .invalidURL(let url):
            return "Can't convert \(url) to an URL"
        case .invalidURLComponents(let url):
            return "Can't get components from this URL \(url)"
        }
    }
}
