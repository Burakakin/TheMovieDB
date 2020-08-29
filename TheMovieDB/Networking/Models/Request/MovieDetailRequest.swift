//
//  MovieDetail.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 30.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

struct MovieDetailRequest: Codable{
    let movieId: String
    
    enum CodingKeys: String, CodingKey {
        case movieId = "movie_id"
    }
}
