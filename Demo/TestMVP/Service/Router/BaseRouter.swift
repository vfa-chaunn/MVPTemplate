//
//  BaseRouter.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/20/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import Alamofire

protocol BaseRouterProtocol {
    var httpMethod: HTTPMethod { get }
    var parameters : [String: Any] { get }
    var encoder : JSONEncoding { get }
    var headers : HTTPHeaders { get }
    var url: String { get }
}
