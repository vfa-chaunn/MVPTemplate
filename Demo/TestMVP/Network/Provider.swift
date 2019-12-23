//
//  Provider.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation

class Provider {
    
    static let shared = Provider()
    private let network : NetworkProtocol = Network()
    
    var movieService : MovieService {
        return MovieService(network: network)
    }
}
