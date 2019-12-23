//
//  MovieRouter.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import Alamofire

enum MovieRouter : BaseRouter {
    case getTopRated(page: Int)
    var url: String {
        switch self {
        case .getTopRated(let page):
            return "movie/top_rated?api_key=\(APIkey)&page=\(page)"
        default:
            return ""
        }
    }
    
    var parameters: [String : Any] {
        switch self {
        case .getTopRated:
            return [:]
        default:
            return [:]
        }
    }
    
    var headers: HTTPHeaders {
        return DefaultHeader.addDefaultHeader()
    }
    
    var method: HTTPMethod {
        switch self {
        case .getTopRated:
            return .get
        default:
            return .get
        }
    }
    
    
}
