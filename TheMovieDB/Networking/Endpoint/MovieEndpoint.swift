//
//  MovieEndpoint.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 28.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import Foundation
import Alamofire


enum MoviePath {
    static let moviesUpcoming = "/movie/upcoming"
    static let moviesNowPlaying = "/movie/now_playing"
    static let movieDetail = "/movie/"
    
    static let searchMovies = "/search/movie"
    
}

enum MovieRouter {
    case moviesUpcoming(MoviesUpComingRequest)
    case moviesNowPlaying(MoviesNowPlayingRequest)
    case movieDetail(MovieDetailRequest)
    case movieDetailSimilar(MovieDetailRequest)
    
    case searchMovies(SearchMovieRequest)
}


extension MovieRouter: RequestConvertible {
    
    var path: String {
        switch self {
        case .moviesUpcoming:
            return MoviePath.moviesUpcoming
        case .moviesNowPlaying:
            return MoviePath.moviesNowPlaying
        case .movieDetail(let model):
            return MoviePath.movieDetail + model.movieId
        case .movieDetailSimilar(let model):
            return MoviePath.movieDetail + model.movieId + "/similar"
            
        case .searchMovies:
            return MoviePath.searchMovies
        }
    }
    
   var method: HTTPMethod {
       return .get
    }
    
    var encoding: ParameterEncoding {
       return URLEncoding.default
    }
    
    var params: Parameters? {
        switch self {
        default:
            return nil
        }
    }
    
    var queryParams: Parameters? {
        switch self {
        case .moviesUpcoming(let model):
            return model.dictionary
        case .moviesNowPlaying(let model):
            return model.dictionary
        case .searchMovies(let model):
            return model.dictionary
        default:
            return nil
        }
    }
    
    
}
