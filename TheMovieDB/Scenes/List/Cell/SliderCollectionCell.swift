//
//  SliderCollectionCell.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit
import Kingfisher

class SliderCollectionCell: UICollectionViewCell {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func configure(item: MovieList) {
        titleLabel.text = item.title
        posterImageView.setImage(item.posterPath)
        
//        https://image.tmdb.org/t/p/w500/kqjL17yufvn9OVLyXYpvtyrFfak.jpg
    }

}

