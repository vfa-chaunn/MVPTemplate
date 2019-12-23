//
//  Network.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import Alamofire

let APIkey = "4522741fb5dc92b9fdb3772dfeb62958"
//let APIkey = "4522741fb5dc92b9fdb3772dfeb6295"
let BASE_URL = "https://api.themoviedb.org/3/"

protocol NetworkProtocol {
    func requestData(router: BaseRouter, successed: @escaping RequestSuccess, failed: @escaping RequestFailure)
}

class Network : NetworkProtocol{
    func requestData(router: BaseRouter, successed: @escaping RequestSuccess, failed: @escaping RequestFailure) {
        Alamofire.request(makeUrl(link: router.url), method: router.method, parameters: [:], encoding: getEncoding(method: router.method), headers: router.headers).responseJSON(queue: DispatchQueue.global(), options: []) { (response) in
            switch (response.result) {
            case .success(let json):
                if let result = json as? [String : Any]{
                    if let statusMessage = result["status_message"] as? String {
                        print("\n**************ERROR*****************")
                        print(result)
                        failed(APIError(message: statusMessage))
                    } else {
                        print("\n**************SUCCESS*****************")
                        print(result)
                        if let data = try? JSONSerialization.data(withJSONObject: result, options: []) {
                            successed(data)
                        } else {
                            failed(APPError.canNotParseData)
                        }
                    }
                }
            case .failure(let error):
                failed(APIError(message: error.localizedDescription))
            }
        }
    }
    
    func makeUrl(link: String) -> URL {
        return URL(string: BASE_URL + link)!
    }
    
    func getEncoding(method: HTTPMethod) -> ParameterEncoding {
        switch method {
        case .get:
            return URLEncoding.default
        case .post:
            return JSONEncoding.default
        default:
            return JSONEncoding.default
        }
    }
}
