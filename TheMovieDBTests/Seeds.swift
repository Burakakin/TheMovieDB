//
//  Seeds.swift
//  TheMovieDBTests
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

@testable import TheMovieDB
import XCTest

struct Seeds {
    struct Movies {
        static let movies: [MovieList] = [MovieList(popularity: 3,
                                                    voteCount: 3,
                                                    video: false,
                                                    posterPath: "poster",
                                                    id: 123,
                                                    adult: false,
                                                    backdropPath: "backdropPath",
                                                    originalLanguage: "originalLanguage",
                                                    originalTitle: "originalTitle",
                                                    genreIDS: [1,2,3],
                                                    title: "title",
                                                    voteAverage: 3,
                                                    overview: "overview",
                                                    releaseDate: "2018"),
                                          MovieList(popularity: 2,
                                                    voteCount: 3,
                                                    video: false,
                                                    posterPath: "poster1",
                                                    id: 123,
                                                    adult: false,
                                                    backdropPath: "backdropPath1",
                                                    originalLanguage: "originalLanguage1",
                                                    originalTitle: "originalTitle1",
                                                    genreIDS: [1,2,3],
                                                    title: "title1",
                                                    voteAverage: 3,
                                                    overview: "overview1",
                                                    releaseDate: "20181") ]
    }
}
