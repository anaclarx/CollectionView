//
//  CollectionView.swift
//  CollectionView
//
//  Created by Ana Clara Filgueiras Granato on 17/06/21.
//
import UIKit
import Foundation

class FungoCollectionView: UIView{
    
    var collection: UICollectionView = {
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .vertical
            layout.sectionInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
            let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
            collection.translatesAutoresizingMaskIntoConstraints = false
            collection.register(FungoCollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
            collection.showsHorizontalScrollIndicator = false
        layout.itemSize = CGSize(width: collection.frame.size.width/3, height: collection.frame.size.width/3)
            return collection
        }()
    
    override init(frame: CGRect) {
           super.init(frame: frame)
           self.addSubview(collection)
           setUpCollectionView()
       }
       
       
       func setUpCollectionView(){
           collection.register(FungoCollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
           collection.backgroundColor = UIColor.white
           collection.translatesAutoresizingMaskIntoConstraints = false
           NSLayoutConstraint.activate([
               collection.topAnchor.constraint(equalTo: self.topAnchor),
               collection.bottomAnchor.constraint(equalTo: self.bottomAnchor),
               collection.leftAnchor.constraint(equalTo: self.leftAnchor),
               collection.rightAnchor.constraint(equalTo: self.rightAnchor)
           ])
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
    
    
}

