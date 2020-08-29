//
//  UIImageView+Extension.swift
//  TheMovieDB
//
//  Created by Burak AKIN on 29.08.2020.
//  Copyright © 2020 Burak AKIN. All rights reserved.
//

import UIKit

extension UIImageView{
    
    func setImage(_ path: String?, _ placeholder: UIImage? = nil){
        if let path = path {
            if let url = URL(string: "https://image.tmdb.org/t/p/w500\(path)") {
                kf.setImage(with: url)
            }
        }
    }
}
