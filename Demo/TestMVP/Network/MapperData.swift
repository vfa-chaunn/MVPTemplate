//
//  MapperData.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation


class MapperData {
    static func mapperObjectWithKey<T: Codable>(_ data: Data, completion: @escaping SuccessHandler<T>.object) {
        if let objc = try? JSONDecoder().decode(BaseResponse<T>.self, from: data), let result = objc.results{
            completion(result)
        }
    }
    static func mapperArrayWithKey<T: Codable>(_ data: Data, completion: @escaping SuccessHandler<T>.array) {
        if let objc = try? JSONDecoder().decode(BaseResponse<[T]>.self, from: data), let result = objc.results{
            completion(result)
        } else {
            completion([])
        }
    }
    static func mapperNoKey<T: Codable>(_ data: Data, completion: @escaping SuccessHandler<T>.object) {
        if let objc = try? JSONDecoder().decode(T.self, from: data){
            completion(objc)
        }
    }
}
