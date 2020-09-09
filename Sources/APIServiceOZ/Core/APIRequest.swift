//
//  File.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

public protocol APIRequest {
    
    // MARK: - PROPERTIES
    var requestType: APIRequestType { get }
    var url: String { get }
    var baseUrl: String { get }
    var headerParameters: HTTPHeaders? { get }
    var queryParameters: HTTPParameters? { get }
    var bodyParameters: HTTPParameters? { get }
    var session: URLSession { get }
    
}

// MARK: CUSTOM TYPES
public typealias HTTPHeaders = [String: String]
public typealias HTTPParameters = [String: Any]

// MARK: API REQUEST TYPE
public enum APIRequestType: String {
    case get = "GET"
    case post = "POST"
    case delete = "DELETE"
}

// MARK: HEADER KEYS
public enum APIHTTPHeaderFieldKey: String {
    case contentType = "Content-Type",
    authorization = "Authorization",
    xApiKey = "x-api-key",
    mobileOS = "x-mobileapp-os",
    appVersion = "x-mobileapp-version",
    tokenRefresh = "token"
}
