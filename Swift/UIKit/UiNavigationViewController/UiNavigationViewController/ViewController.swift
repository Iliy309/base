//
//  ViewController.swift
//  UiNavigationViewController
//
//  Created by Macbook pro on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.title = "FirsVC"
        
        
        let item = ["up", "down"]
        
        let segmentController = UISegmentedControl(items: item)
        segmentController.isMomentary = true
        segmentController.addTarget(self, action: #selector(segmentControllerChanged(param: )), for: .valueChanged)
       
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: segmentController)
        
        self.view.backgroundColor = .white
        
        self.button = UIButton(type: .system)
        self.button.center = self.view.center
        self.button.setTitle("SecondVC", for: .normal)
        self.button.sizeToFit()
        self.button.addTarget(self, action: #selector(changeVC(param:)), for: .touchUpInside)
        self.view.addSubview(self.button)
        
    }

    @objc func changeVC (param: Any) {
        let secondView = SecondViewController()
        self.navigationController?.pushViewController(secondView, animated: true)
        
    }

    @objc func segmentControllerChanged ( param: UISegmentedControl) {
        switch param.selectedSegmentIndex {
        case 0 : print("up")
        case 1: print("down")
        default: break
        }
    }
}


