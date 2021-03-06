//
//  MovieDetailPresenter.swift
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

protocol MovieDetailPresentationLogic
{
    func presentDetail(response: MovieDetailm.Detail.Response)
    func goToDetail(request: MovieDetailm.SelectedMovie.Response)
    
}

class MovieDetailPresenter: MovieDetailPresentationLogic
{
    weak var viewController: MovieDetailDisplayLogic?
    
    // MARK: Do something
    
    func presentDetail(response: MovieDetailm.Detail.Response)
    {
        
        var sections: [Section] = []
        
        let detail: [CellConfigurator] = [MovieDetailCellConfigurator(item: MovieDetailCellViewModel(title: response.movieDetail.title, releaseDate: response.movieDetail.releaseDate, overview: response.movieDetail.overview, posterPath: response.movieDetail.posterPath, star: String(response.movieDetail.popularity)))]
        
        sections.append(Section(items: detail))
        
        let similar: [CellConfigurator] = [SimilarMoviesCellConfigurator(item: SimilarMoviesCellViewModel(similarMovies: response.similarMovies))]
        
        sections.append(Section(items: similar))
        
        let viewModel = MovieDetailm.Detail.ViewModel(sections: sections)
        
        viewController?.displayDetail(viewModel: viewModel)
    }
    
    func goToDetail(request: MovieDetailm.SelectedMovie.Response) {
        viewController?.goToDetail(viewModel: MovieDetailm.SelectedMovie.ViewModel())
    }
}
