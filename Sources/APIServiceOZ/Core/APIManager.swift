//
//  APIManager.swift
//  
//
//  Created by Oussama Zroud on 8/26/20.
//

import Foundation

public extension APIRequest {
    
    // MARK:- PROPERTIES
    var session: URLSession {
        let configuration = URLSessionConfiguration.default
        return URLSession(configuration: configuration)
    }
    
    // MARK: - SETUP REQUEST
    func asURLRequest() throws -> URLRequest {
        
        guard var urlPath = URL(string: baseUrl) else {
            throw APIError.invalidURL(url: baseUrl)
        }
        
        urlPath.appendPathComponent(url)
        // get query params
        if let queryParameters = queryParameters {
            var components = URLComponents(url: urlPath, resolvingAgainstBaseURL: true)
            
            components!.queryItems = queryParameters.map({ (key, value) -> URLQueryItem in
                return URLQueryItem(name: key, value: String(describing: value))
            })
            urlPath = components!.url!
        }
        
        var request = URLRequest(url: urlPath)
        request.httpMethod = requestType.rawValue
        
        // set headers
        if let headers = headerParameters {
            headers.forEach { (key, value) in
                request.setValue(value, forHTTPHeaderField: key)
            }
        }
        
        if requestType == .post {
            // get body params
            if let bodyParameters = bodyParameters {
                debugPrint("add params to body request\(bodyParameters)")
            }
        }
        return request
    }
    
    // MARK: - EXECUTE REQUEST
    func executeRequest(onComplete: @escaping(Result<WeatherCity, APIError>)-> Void){
        
        guard let urlRequest =  try? self.asURLRequest() else {
            onComplete(.failure(APIError.invalidURL(url: baseUrl)))
            return
        }
        
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            
            if let error = error {
                onComplete(.failure(error as? APIError ?? APIError.dataFailed))
            } else if let data = data {
                do {
                    guard let weatherCity = try? JSONDecoder().decode(WeatherCity.self, from: data) else {
                        onComplete(.failure(APIError.parsingError))
                        return
                    }
                    onComplete(.success(weatherCity))
                }
            } else {
                onComplete(.failure(APIError.dataFailed))
            }
        }
        task.resume()
    }
}
