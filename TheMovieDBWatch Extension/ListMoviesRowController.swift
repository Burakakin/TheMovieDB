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
    @IBOutlet weak var releaseDate: WKInterfaceLabel!
    
    
    func configure(place: MovieList) {
        titleLabel.setText(place.originalTitle)
        releaseDate.setText(place.releaseDate)
        moviesImageView.setImage(place.posterPath)
    }
    
}


extension WKInterfaceImage {
    func setImage(_ path: String?, _ placeholder: UIImage? = nil){
        if let path = path {
            if let url = URL(string: "https://image.tmdb.org/t/p/w500\(path)") {
                kf.setImage(with: url)
            }
        }
    }
}
