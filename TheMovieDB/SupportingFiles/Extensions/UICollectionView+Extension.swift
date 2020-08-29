//
//  UICollectionView+Extension.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

extension UICollectionView {
    
    
    func registerNib<T>(_ type: T.Type){
        register(UINib(nibName: String(describing: type), bundle: nil), forCellWithReuseIdentifier: String(describing: type))
    }
    
    
    func dequeCell<T>(_ type: T.Type, for indexPath: IndexPath) -> T{
        return dequeueReusableCell(withReuseIdentifier: String(describing: type), for: indexPath) as! T
    }
    
    
}
