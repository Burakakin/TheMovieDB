//
//  Base.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 28.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import Foundation

struct Base <T: Codable>: Codable {
    
    let results: T?
    let page, totalResults: Int
    let dates: Dates?
    let totalPages: Int

    enum CodingKeys: String, CodingKey {
        case results, page
        case totalResults = "total_results"
        case dates
        case totalPages = "total_pages"
    }
    
}


struct Dates: Codable {
    let maximum, minimum: String
}
