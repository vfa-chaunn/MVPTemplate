//
//  UserRouter.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/20/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import Alamofire

enum UserRouter : BaseRouterProtocol {
    
    var httpMethod: HTTPMethod {
        switch self {
        case .login:
            return .post
        default:
            return .post
        }
    }
    
    var url: String {
        switch self {
        case .login:
            return "login"
        default:
            return ""
        }
    }
    
    var parameters: [String : Any] {
        switch self {
        case .login(let email, let password):
            return ["email": email, "password": password]
        default:
            return [:]
        }
    }
    
    var encoder: JSONEncoding {
        switch self {
            case .login:
                return JSONEncoding.default
        default:
            return JSONEncoding.default
        }
    }
    
    var headers : HTTPHeaders {
        return DefaultHeader.addDefaultHeader()
    }
     
    case login(email: String, password: String)
}


struct DefaultHeader {
    static func addDefaultHeader() -> HTTPHeaders {
        var dictionary : [String : String] = [:]
        dictionary["Content-Type"] = "Application/Json"
        return HTTPHeaders(dictionary)
    }
}
