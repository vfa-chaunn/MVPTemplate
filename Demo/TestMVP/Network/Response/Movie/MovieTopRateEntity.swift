//
//  MovieTopRate.swift
//  TestMVP
//
//  Created by VFA-ChauNN on 12/23/19.
//  Copyright © 2019 VFA-ChauNN. All rights reserved.
//

import Foundation

class MovieTopRateEntity : Codable {
    var popularity : Float?
    var vote_count : Float?
    var video : Bool?
    var poster_path : String?
    var id : Int?
    var adult : Bool?
    var backdrop_path : String?
    var original_language : String?
    var original_title : String?
    var title : String?
    var vote_average : Float?
    var overview : String?
    var release_date : String?
}
