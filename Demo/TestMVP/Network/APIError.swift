//
//  APIError.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation
import UIKit

// MARK APPError
struct APPError {
    static let canNotParseData = APIError(message: "Can Not Parse Data")
}

// MARK: APIError class
class APIError: Error {
    let code: Int?
    let message: String?
    var data: Any? = nil
    
    init(code: Int?, message: String?) {
        self.code = code
        self.message = message
    }
    
    init(message: String?) {
        self.message = message
        self.code = nil
    }
    
    init(error: Error?) {
        self.code = nil
        self.message = error?.localizedDescription
    }
}
