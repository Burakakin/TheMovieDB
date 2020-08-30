//
//  SimilarMoviesCell.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 30.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

typealias SimilarMoviesCellConfigurator = TableCellConfigurator<SimilarMoviesCell, SimilarMoviesCellViewModel>

struct SimilarMoviesCellViewModel {
    let similarMovies: [MovieList]
}

protocol SimilarMoviesCollectionViewDelegate: class {
    func setIndex(index: Int)
}

class SimilarMoviesCell: UITableViewCell, CellConfigurable {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var similarMovies: [MovieList] = []
    
    var delegate: SimilarMoviesCollectionViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        collectionView.registerNib(SimilarMoviesCollectionCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func configure(with model: SimilarMoviesCellViewModel) {
        self.similarMovies = model.similarMovies
        collectionView.reloadData()
    }
    
}

extension SimilarMoviesCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return similarMovies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeCell(SimilarMoviesCollectionCell.self, for: indexPath)
        cell.configure(item: similarMovies[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width / 4, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.setIndex(index: indexPath.row)
    }
    
    
}

