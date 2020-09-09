//
//  File.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

public enum WeatherCityRequest: APIRequest {
    
    
    //
    case get(headerParams: HTTPHeaders?, queryParams: HTTPParameters?, bodyParams: HTTPParameters?)
    
    // get request type
    public var requestType: APIRequestType {
        switch self {
        case .get:
            return .get
        default:
            return .get
        }
    }
    
    // get base url
    public var baseUrl: String {
        switch self {
        case .get:
            return #"https://api.openweathermap.org/data/2.5/"#
        default:
            return #""#
        }
    }
    
    // get path for request
    public var url: String {
        switch self {
        case .get( _, _, _):
            return #"onecall"#
        default:
            return #""#
        }
    }
    
    // get headers for request
    public var headerParameters: HTTPHeaders? {
        switch self {
        case .get(let headers, _, _):
            return headers
        default:
            return nil
        }
    }
    
    // query for request
    public var queryParameters: HTTPParameters? {
        switch self {
        case .get( _, let query, _):
            return query
        default:
            return nil
        }
    }
    
    // get body for request
    public var bodyParameters: HTTPParameters? {
        switch self {
        case .get( _, _, let body):
            return body
        default:
            return nil
        }
    }
}
