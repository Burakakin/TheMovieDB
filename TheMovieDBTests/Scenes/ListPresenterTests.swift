//
//  ListPresenterTests.swift
//  TheMovieDBTests
//
//  Created by Burak AKIN on 30.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import XCTest

@testable import TheMovieDB
class ListPresenterTests: XCTestCase {
    
    var sut: ListPresenter!
    
    override func setUp() {
        super.setUp()
        setListPresenter()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func setListPresenter() {
        sut = ListPresenter()
    }
    
    class ListDisplayLogicSpy: ListDisplayLogic {
        func displayNowPlayingMovies(viewModel: List.NowPlayingMovies.ViewModel) {
            
        }
        func displayMovieDetail(viewModel: List.SelectedMovie.ViewModel) {
        }
        
        var displayListsCalled = false
        var viewModel: List.UpcomingMovies.ViewModel!
        
        func displayUpcomingMovies(viewModel: List.UpcomingMovies.ViewModel) {
            displayListsCalled = true
            self.viewModel = viewModel
        }
    }
    
    func testPresentListShouldFormatFetchedMoviesForDisplay() {
        // Given
        let listDisplayLogicSpy = ListDisplayLogicSpy()
        sut.viewController = listDisplayLogicSpy
        
        // When
        
        let amy = Seeds.Movies.movies
        
        let response = List.UpcomingMovies.Response(response: amy)
        sut.presentUpcomingMovies(response: response)
        
        // Then
        let displayedOrders = listDisplayLogicSpy.viewModel.sections
        let movie = displayedOrders[0].items[0] as! ListMoviesCellConfigurator
        let viewModel = movie.item
        
        XCTAssertEqual(viewModel.title, "title", "Presenting fetched place should properly format title")
        XCTAssertEqual(viewModel.posterPath, "poster", "Presenting fetched movie should properly format posterPath")
        
        let movie1 = displayedOrders[0].items[1] as! ListMoviesCellConfigurator
        let viewModel1 = movie1.item
        
        XCTAssertEqual(viewModel1.title, "title1", "Presenting fetched place should properly format Address")
        XCTAssertEqual(viewModel1.posterPath, "poster1", "Presenting fetched place should properly format Name")
    }
    
    
    func testPresentFetchedShouldAskViewControllerToDisplayFetched()
    {
        // Given
        let listDisplayLogicSpy = ListDisplayLogicSpy()
        sut.viewController = listDisplayLogicSpy
        
        // When
        let response = List.UpcomingMovies.Response(response: Seeds.Movies.movies)
        sut.presentUpcomingMovies(response: response)
        
        // Then
        XCTAssert(listDisplayLogicSpy.displayListsCalled, "Presenting fetched place should ask view controller to display them")
    }
    
    
}
