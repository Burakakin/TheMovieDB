//
//  ListMoviesInterfaceController.swift
//  TheMovieDBWatch Extension
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import WatchKit
import Alamofire
import Kingfisher


class ListMoviesInterfaceController: WKInterfaceController {

    @IBOutlet weak var tableView: WKInterfaceTable!
    
     var worker = ListWorker()
    var movies: [MovieList] = []
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        worker.fetchUpcomingMovies(request: MoviesUpComingRequest()) { [weak self] (result) in
            switch result {
            case .success(let response):
                if let movies = response.results {
                    self?.movies = movies
                    self?.congifureTableView(withPlaces: movies)
                }
            case .failure(let error):
                break
            }
        }
    }
    
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        let movie = movies[rowIndex]
        //pushController(withName: "PlaceOnMapInterfaceController", context: place)
    }
    
    
    func congifureTableView(withPlaces places: [MovieList]) {
        tableView.setNumberOfRows(places.count, withRowType: "ListMoviesRowController")
        
        for index in 0..<tableView.numberOfRows {
            if let controller = tableView.rowController(at: index) as? ListMoviesRowController {
                controller.configure(place: places[index])
            }
        }
    }


    
}
