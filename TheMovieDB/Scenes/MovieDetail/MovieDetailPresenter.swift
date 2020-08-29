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
  func presentSomething(response: MovieDetailm.Detail.Response)
}

class MovieDetailPresenter: MovieDetailPresentationLogic
{
  weak var viewController: MovieDetailDisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: MovieDetailm.Detail.Response)
  {
    let viewModel = MovieDetailm.Detail.ViewModel()
    //viewController?.displaySomething(viewModel: viewModel)
  }
}