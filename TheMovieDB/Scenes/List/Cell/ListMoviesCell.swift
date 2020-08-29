//
//  ListMoviesCell.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

typealias ListMoviesCellConfigurator = TableCellConfigurator<ListMoviesCell, ListMoviesCellViewModel>

struct ListMoviesCellViewModel {
    let title: String
    let releaseDate: String
    let orginalTitle: String
    let posterPath: String
}

class ListMoviesCell: UITableViewCell, CellConfigurable {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var orginalTitleLabel: UILabel!
    @IBOutlet weak var posterPathImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with model: ListMoviesCellViewModel) {
        titleLabel.text = model.title
        releaseDateLabel.text = model.releaseDate
        orginalTitleLabel.text = model.orginalTitle
        posterPathImageView.setImage(model.posterPath)
    }
    
}
