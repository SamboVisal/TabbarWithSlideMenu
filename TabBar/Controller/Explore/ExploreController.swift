//
//  ExploreController.swift
//  TabBar
//
//  Created by Pisal on 7/3/2561 BE.
//  Copyright © 2561 BE Pisal. All rights reserved.
//

import UIKit

class ExploreController: UICollectionViewController , UICollectionViewDelegateFlowLayout {
    
    private let cellServiceId = "serviceCellId"
    
    var explore: [ExploreModel]?
    var ex: ExploreModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        explore = ExploreModel.getExploreData()
        
        collectionView?.backgroundColor = UIColor.white
        collectionView?.register(ExploreData.self, forCellWithReuseIdentifier: cellServiceId)
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = explore?.count {
            return count
        }
        return 0
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellServiceId, for: indexPath) as! ExploreData
        cell.sectionCategory = explore?[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 200)
    }
    
    
}


