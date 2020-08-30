//
//  SimilarMoviesCollectionCell.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 30.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

class SimilarMoviesCollectionCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(item: MovieList) {
        titleLabel.text = item.title
        posterImageView.setImage(item.posterPath)
    }

}
