//
//  Provider.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/20/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation


class Provider {
    static let shared = Provider()
    var userServiser : UserService {
        return UserService()
    }
}
