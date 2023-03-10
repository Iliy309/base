//
//  ViewController.swift
//  UILabel
//
//  Created by Macbook pro on 09/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.frame = CGRect(x: 50, y: 70, width: 100, height: 50)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.text = "The swift Devoloper"
        label.adjustsFontSizeToFitWidth = true
        label.sizeToFit()
        label.textColor = .yellow
        label.shadowColor = .lightGray
        label.shadowOffset = CGSize(width: 2, height: 2)
        view.addSubview(label)
        
    }


}

