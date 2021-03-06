//
//  MovieDetailModels.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 28.08.2020.
//  Copyright (c) 2020 Burak AKIN. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum MovieDetailm
{
    // MARK: Use cases
    
    enum Detail
    {
        struct Request
        {
            
        }
        struct Response
        {
            let movieDetail: MovieDetail
            let similarMovies: [MovieList]
        }
        struct ViewModel
        {
            let sections: [Section]
        }
    }
    
    enum SelectedMovie
    {
        struct Request
        {
            let index: Int
        }
        struct Response
        {
            
        }
        struct ViewModel
        {
            
        }
    }
}
