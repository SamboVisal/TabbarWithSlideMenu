//
//  ExploreDataSource.swift
//  TabBar
//
//  Created by Pisal on 7/3/2561 BE.
//  Copyright © 2561 BE Pisal. All rights reserved.
//

import UIKit

class ExploreData: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    
    var cellCategory: [ExploreModel]?
    var contents: ExploreModel?
    var sectionCategory: ExploreModel? {
        
        didSet{
            
            if let name = sectionCategory?.type {
                print(name)
            }else {
                print("cannot get category")
            }
            
        }
    }
    lazy var dataServiceCollectionView: UICollectionView = {
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero,collectionViewLayout: flowLayout)
        
        collectionView.layer.cornerRadius = 20
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        print(cellCategory?.count ?? "asf")
        backgroundColor = .gray
        addSubview(dataServiceCollectionView)
        dataServiceCollectionView.dataSource = self
        dataServiceCollectionView.delegate = self
        dataServiceCollectionView.register(ExploreDataCell.self, forCellWithReuseIdentifier: "cellid")
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-14-[v0]-14-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": dataServiceCollectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-20-[v0]-20-|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0": dataServiceCollectionView]))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellid", for: indexPath) as! 
        ExploreDataCell
        collectionView.isScrollEnabled = false
        cell.content = sectionCategory?.contentExplore?[indexPath.item]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = CGSize(width: frame.width - 28, height: frame.height - 40)
        return size
    }
    
}

class ExploreDataCell: UICollectionViewCell {
    
    var content: ContentExplore? {
        
        didSet{
            
            if let name = content?.amountArticle {
                detailType.text = String(name)
                categoyType.text = content?.typeExplore
            }
        }
        
    }

    
    lazy var imageStaffView: UIImageView = {
        
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "banner1")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
        
    }()
    
    lazy var categoyType: UILabel = {
        
        let nameLabel = UILabel()
        nameLabel.text = "Sambo Visal"
        nameLabel.font = UIFont.systemFont(ofSize: 25)
        nameLabel.textColor = .white
        nameLabel.contentMode = .scaleAspectFill
        
        return nameLabel
        
    }()
    
    lazy var detailType: UILabel = {
        
        let nameLabel = UILabel()
        nameLabel.text = "5 Articles"
        nameLabel.font = UIFont.systemFont(ofSize: 15)
        nameLabel.textColor = .white
        nameLabel.contentMode = .scaleAspectFill
        
        return nameLabel
        
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(imageStaffView)
        imageStaffView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.height)
        categoyType.frame = CGRect(x: 12, y: 90, width: 200, height: 20)
        detailType.frame = CGRect(x: 12, y: categoyType.frame.maxY + 2, width: 200, height: 20)
        
        imageStaffView.addSubview(categoyType)
        imageStaffView.addSubview(detailType)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
        
    }
    
    
}

