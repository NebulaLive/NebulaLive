//
//  Nebula.swift
//  NebulaLive
//
//  Created by Kyle Thomas on 11/09/2018.
//  Copyright © 2018 Kyle Thomas. All rights reserved.
//

import Foundation
import Moya

enum Nebula {
    case artists
}

extension Nebula: TargetType {
    var baseURL: URL { return URL(string: Config.Network.baseUrl)!}
    var path: String {
        switch self {
        case .artists:
            return ""
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .artists:
            return .post
        }
    }
    
    var task: Task {
        switch self {
        default:
            if let params = self.parameters {
                return Task.requestParameters(parameters: params, encoding: JSONEncoding.default)
            } else {
                return .requestPlain
            }
        }
    }
    
    public var parameters: [String:Any]? {
        switch self {
        case .artists:
            return ["": ""]
        
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
    public var parameterEncoding: Moya.ParameterEncoding {
        return JSONEncoding.default
    }
    
    var sampleData: Data {
        switch self {
        case .artists:
            return Data(base64Encoded: "Some Data")!
        }
    }
    
}
