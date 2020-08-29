//
//  SliderCell.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

typealias SliderCellConfigurator = TableCellConfigurator<SliderCell, SliderCellViewModel>

struct SliderCellViewModel {
    let nowPlayingMoview: [MovieList]
}

protocol CollectionViewDelegate: class {
    func setIndex(index: Int)
}

class SliderCell: UITableViewCell, CellConfigurable {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var nowPlayingMoview: [MovieList] = []
    
    var delegate: CollectionViewDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionView.registerNib(SliderCollectionCell.self)
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with model: SliderCellViewModel) {
        self.nowPlayingMoview = model.nowPlayingMoview
        collectionView.reloadData()
    }
    
}

extension SliderCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nowPlayingMoview.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeCell(SliderCollectionCell.self, for: indexPath)
        cell.configure(item: nowPlayingMoview[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        delegate?.setIndex(index: indexPath.row)
    }
    
    
}
