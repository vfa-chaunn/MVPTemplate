//
//  BaseRouter.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import Alamofire

protocol BaseRouter {
    var url : String {get}
    var parameters : [String : Any] {get}
    var headers : HTTPHeaders {get}
    var method : HTTPMethod {get}
}


struct DefaultHeader {
    static func addDefaultHeader() -> HTTPHeaders {
        var headers : [String: String] = [:]
        headers["Content-Type"] = "application/json"
        return headers
    }
}
