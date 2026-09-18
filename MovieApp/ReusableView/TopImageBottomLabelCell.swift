//
//  MovieCell.swift
//  MovieApp
//
//  Created by Ferid Suleymanzade on 15.09.26.
//

import UIKit

protocol TopImageButtonLabelProtocol {
    var imagePath: String { get }
    var labeltext: String { get }
}

class TopImageBottomLabelCell: UICollectionViewCell {
    lazy var titleLabel: UILabel = {
        let l = UILabel()
        l.textColor = .black
        l.font = .systemFont(ofSize: 16, weight: .medium)
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    lazy var topImage: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 16
        iv.contentMode = .scaleAspectFill
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    static let identifier = "TopImageBottomLabelCell"
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureContraints() {
        addSubview(titleLabel)
        addSubview(topImage)
        NSLayoutConstraint.activate([
            titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            topImage.topAnchor.constraint(equalTo: topAnchor),
            topImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            topImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            topImage.bottomAnchor.constraint(equalTo: titleLabel.topAnchor, constant: -8)
        ])
    }
    
//    func configure(data: MovieResult) {
//        titleLabel.text = data.originalTitle
//        topImage.loadImage(data: data.posterPath ?? "")
//    }
    
    func configure(data: TopImageButtonLabelProtocol) {
        titleLabel.text = data.labeltext
        topImage.loadImage(data: data.imagePath)
    }
}
