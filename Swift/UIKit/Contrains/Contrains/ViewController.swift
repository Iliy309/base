//
//  ViewController.swift
//  Contrains
//
//  Created by Macbook pro on 18/12/22.
//

import UIKit

class ViewController: UIViewController {

    var view1: UIView = {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        view1.backgroundColor = UIColor.red
        return view1
    }()
    
    var view2: UIView = {
        let view1 = UIView()
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.frame = CGRect(x: 20, y: 20, width: 20, height: 20)
        view1.backgroundColor = UIColor.brown
        return view1
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(view1)
        view.addSubview(view2)
        createViewConstraint()
        
        
    }

    func createViewConstraint () {
        view1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        view1.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        view1.heightAnchor.constraint(equalToConstant: 100).isActive = true
        view1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view2.leftAnchor.constraint(equalTo: view1.leftAnchor).isActive = true
        //view2.heightAnchor.constraint(equalTo: view1.topAnchor, constant: 20) .isActive = true
        view2.widthAnchor.constraint(equalTo: view.heightAnchor, constant: 20).isActive = true
        
        
    }
    
//    func createViewConstrain (){
//        NSLayoutConstraint(item: view1,
//                           attribute: .leading,
//                           relatedBy: .equal,
//                           toItem: view, attribute: .leadingMargin,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .leading,
//                           relatedBy: .equal,
//                           toItem: view, attribute: .trailingMargin,
//                           multiplier: 1,
//                           constant: 0).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .top,
//                           relatedBy: .equal,
//                           toItem: view, attribute: .top,
//                           multiplier: 1,
//                           constant: 88).isActive = true
//        NSLayoutConstraint(item: view1,
//                           attribute: .height,
//                           relatedBy: .equal,
//                           toItem: view, attribute: .width,
//                           multiplier: 1,
//                           constant: 88).isActive = true
//    }

}

