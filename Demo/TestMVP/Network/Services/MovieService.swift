//
//  MovieService.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation

protocol MovieServiceProtocol {
    func getTopRated(page: Int, successed: @escaping SuccessHandler<MovieTopRateEntity>.array, failed: @escaping RequestFailure)
}

class MovieService : MovieServiceProtocol {
    
    private let network : NetworkProtocol!
    
    init(network: NetworkProtocol) {
        self.network = network
    }
    
    func getTopRated(page: Int, successed: @escaping SuccessHandler<MovieTopRateEntity>.array, failed: @escaping RequestFailure) {
        let router = MovieRouter.getTopRated(page: page)
        self.network.requestData(router: router, successed: {data in MapperData.mapperArrayWithKey(data, completion: successed)}, failed: failed)
    }
}
