//
//  ListMoviesRowController.swift
//  TheMovieDBWatch Extension
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import WatchKit
import Kingfisher

class ListMoviesRowController: NSObject {

    @IBOutlet weak var titleLabel: WKInterfaceLabel!
    @IBOutlet weak var moviesImageView: WKInterfaceImage!
    
    
    func configure(place: MovieList) {
        titleLabel.setText(place.originalTitle)
        
    }
    
}
