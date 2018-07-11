//
//  DetailViewController.swift
//  TabBar
//
//  Created by Pisal on 7/10/2561 BE.
//  Copyright © 2561 BE Pisal. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    lazy var scrollView: UIScrollView = {
       
        let view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.contentSize.height = view.frame.height + 100
    }
    
}
