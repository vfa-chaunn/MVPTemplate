//
//  BaseResponse.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation

class BaseResponse <T: Codable>: Codable {
    var page : Int?
    var total_results : Int?
    var total_pages : Int?
    var results : T?
}

struct SuccessHandler<T : Codable> {
    typealias object = (_ object: T?) -> Void
    typealias array = (_ array: [T]) -> Void
    typealias anyObject = (_ object: Any?) -> Void
}


typealias RequestFailure = (_ error: APIError?) -> Void
typealias RequestSuccess = (_ data: Data) -> Void
