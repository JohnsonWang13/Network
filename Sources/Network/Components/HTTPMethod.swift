//
//  HTTPMethod.swift
//  
//
//  Created by 王富生 on 2024/3/18.
//

import Foundation

public enum HTTPMethod {
    case get
    case post
    
    var string: String {
        switch self {
        case .get:
            return "GET"
        case .post:
            return "POST"
        }
    }
}
