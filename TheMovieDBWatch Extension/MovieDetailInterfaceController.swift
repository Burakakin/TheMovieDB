//
//  MovieDetailInterfaceController.swift
//  TheMovieDBWatch Extension
//
//  Created by Burak AKIN on 30.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import WatchKit
import Foundation


class MovieDetailInterfaceController: WKInterfaceController {

    @IBOutlet weak var poster: WKInterfaceImage!
    let worker = MovieDetailWorker()
    @IBOutlet weak var titleLabel: WKInterfaceLabel!
    @IBOutlet weak var overview: WKInterfaceLabel!
    
    var movieDetail: MovieDetail?
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let movieId = context as? Int {
            worker.fetchMovieDetails(request: MovieDetailRequest(movieId: String(movieId))) { result in
                switch result {
                case .success(let detail):
                    self.movieDetail = detail
                    
                    self.titleLabel.setText(detail.title)
                    self.poster.setImage(detail.posterPath)
                    self.overview.setText(detail.overview)
                    
                case .failure(let error):
                    break
                }
            }
        }
        
        
        
        
    }

   

}
