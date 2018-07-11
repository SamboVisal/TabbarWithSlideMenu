//
//  HomeController.swift
//  TabBar
//
//  Created by Pisal on 6/29/2561 BE.
//  Copyright © 2561 BE Pisal. All rights reserved.
//

import UIKit


class HomeController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        print("Hello")
        let menuButton = UIBarButtonItem(title: "Menu", style: .plain, target: self.revealViewController(), action: #selector(slideMenu))
        self.navigationItem.leftBarButtonItem = menuButton
        
    }
    @objc func slideMenu() {
        
        if revealViewController() != nil {
            revealViewController().revealToggle(animated: true)
            revealViewController().rearViewRevealWidth = (view.bounds.width * 80 ) / 100
        }
        else {
            print("no reveal view")
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationItem.title = "Home"
        let searchController = UISearchController(searchResultsController: nil)
        self.navigationItem.searchController = searchController
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: nil)
        
    }
    
}
