//
//  MovieDetailCell.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

typealias MovieDetailCellConfigurator = TableCellConfigurator<MovieDetailCell, MovieDetailCellViewModel>

struct MovieDetailCellViewModel {
    let title: String
    let releaseDate: String
    let overview: String
    let posterPath: String
    let star: String
}

class MovieDetailCell: UITableViewCell, CellConfigurable {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with model: MovieDetailCellViewModel) {
        posterImageView.setImage(model.posterPath)
        titleLabel.text = model.title
        overviewLabel.text = model.overview
        releaseDateLabel.text = model.releaseDate
        starLabel.text = model.star
    }
}
