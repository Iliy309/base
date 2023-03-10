//
//  ViewController.swift
//  UITabBarController and UITabBarItem
//
//  Created by Macbook pro on 09/11/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "FirstVC"
        self.view.backgroundColor = . yellow
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        
    }


}

