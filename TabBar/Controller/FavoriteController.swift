//
//  FavoriteController.swift
//  TabBar
//
//  Created by Pisal on 6/29/2561 BE.
//  Copyright © 2561 BE Pisal. All rights reserved.
//

import UIKit

class FavoriteController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.blue
        print("world")
        self.navigationItem.title = "Favorite"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: nil)
        //self.navigationController?.navigationItem.largeTitleDisplayMode = .never
        self.tabBarController?.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: nil)
    }
    
}
