//
//  Network.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/20/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import Alamofire

let API_KEY = "4522741fb5dc92b9fdb3772dfeb62958"
let BASE_URL = "https://www.themoviedb.org/documentation/api/"

class Network {
    static let shared = Network()
    private let session = Alamofire.Session.default
    func requestData(router: UserRouter) {
        session.request(makeURL(url: router.url), method: router.httpMethod, parameters: router.parameters, encoding: JSONEncoding.default, headers: router.headers, interceptor: nil).responseData(queue: DispatchQueue.global()) { (data) in
            print(data.value)
        }
    }
    
    private func makeURL(url: String) -> URL {
        return URL(string: BASE_URL + url + "?api_key=\(API_KEY)")!
    }
}
