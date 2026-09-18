//
//  UIImageView+Ext.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 15.09.26.
//
import UIKit
import Kingfisher

extension UIImageView {
    func loadImage(data: String) {
        let url = URL(string: CoreHelper.shared.configureImageURL(path: data))
        kf.setImage(with: url)
    }
}


