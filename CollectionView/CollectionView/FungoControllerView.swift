//
//  FungoCollectionView.swift
//  CollectionView
//
//  Created by Ana Clara Filgueiras Granato on 16/06/21.
//

import Foundation
import UIKit

class FungoViewController: UIViewController{
    
    var fungoCollection = FungoCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = fungoCollection
        fungoCollection.collection.delegate = self
        fungoCollection.collection.dataSource = self
       }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
         super.didReceiveMemoryWarning()
         // Dispose of any resources that can be recreated.
     }
}

extension FungoViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let myCell = fungoCollection.collection.dequeueReusableCell(withReuseIdentifier: "MyCell", for: indexPath) as! FungoCollectionViewCell
        return myCell
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    
}
