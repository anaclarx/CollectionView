//
//  FungoCollectionViewCell.swift
//  CollectionView
//
//  Created by Ana Clara Filgueiras Granato on 16/06/21.
//

import Foundation
import UIKit

class FungoCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.gray
        contentView.addSubview(musicName)
        contentView.addSubview(musicArtist)
    }
    
    var musicName: UILabel = {
        let label = UILabel()
        label.text = "Nome Música"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.contentMode = .scaleAspectFit
        label.sizeToFit()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        return label
    }()
    
    var musicArtist: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.contentMode = .scaleAspectFit
        label.sizeToFit()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 28, weight: .semibold)
        label.text = "Nome Música"
        return label
    }()
    
//    var musicImage: UIImageView = {
//        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.clipsToBounds = true
//        imageView.layer.cornerRadius = 25
//
//        return imageView
//    }()
    
    func setUpViews(){
        self.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.heightAnchor.constraint(equalToConstant: 20),
            self.widthAnchor.constraint(equalToConstant: 100),
            self.topAnchor.constraint(equalTo: contentView.topAnchor),
            self.leadingAnchor.constraint(equalTo: contentView.leadingAnchor)
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        musicName.frame = CGRect(x: 5, y: contentView.frame.size.height - 50 , width: contentView.frame.width - 10, height: 50)
        musicArtist.frame = CGRect(x: 5, y: contentView.frame.size.height - 50 , width: contentView.frame.width - 10, height: 50)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
