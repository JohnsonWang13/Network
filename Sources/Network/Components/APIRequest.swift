//
//  APIRequest.swift
//  
//
//  Created by 王富生 on 2024/3/18.
//

import Foundation

public protocol APIRequest {
    var url: URL { get }
    var httpMethod: HTTPMethod { get }
    var cachePolicy: URLRequest.CachePolicy { get }
}

public extension APIRequest {
    var urlRequest: URLRequest {
        var request = URLRequest(url: url, cachePolicy: cachePolicy)
        request.httpMethod = httpMethod.string
        return request
    }
}
