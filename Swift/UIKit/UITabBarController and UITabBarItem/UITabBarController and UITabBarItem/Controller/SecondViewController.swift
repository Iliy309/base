//
//  SecondViewController.swift
//  UITabBarController and UITabBarItem
//
//  Created by Macbook pro on 09/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "SecondVC"
        self.view.backgroundColor = . green
        
        self.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 1)
    }
    

    /*
    // MARK: - Navigation

    c
    */

}
