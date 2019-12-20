//
//  BaseModel.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/20/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation

class BaseResponse<T: Codable> : Codable {
    var id: Int?
    var message: String?
    var data: T?
}
