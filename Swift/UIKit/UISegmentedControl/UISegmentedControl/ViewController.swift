//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Macbook pro on 07/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentControll = UISegmentedControl()
    let imageView = UIImageView()
    var menuArray = ["one", "two", "tree"]
    var imageArray = [UIImage(named: "Костюм1.png"),
                      UIImage(named: "Костюм2.png"),
                      UIImage(named: "Костюм3.png")]
    var cart = [String]()
    
   
    @IBOutlet weak var textView: UITextView!
    
   
    
    @IBOutlet weak var button: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.segmentControll = UISegmentedControl(items: self.menuArray)
        self.segmentControll.frame = CGRect(x: 100, y: 600, width: 200 , height: 30)
        self.view.addSubview(self.segmentControll)
        
        self.imageView.frame = CGRect(x: 0, y: 0, width: 400, height: 250)
        self.imageView.center = self.view.center
        self.view.addSubview(self.imageView)
        self.imageView.image = self.imageArray[0]
        
        self.segmentControll.addTarget(self, action: #selector(changeMenu), for: .valueChanged)
        
        self.textView.text = ""
        
     
    }

    @objc func changeMenu(target: UISegmentedControl)  {
        if target == self.segmentControll {
            let index = target.selectedSegmentIndex
            self.imageView.image = self.imageArray[index]
            self.cart = [menuArray[index]]
            //self.textView.text = "Ваш заказ номер \(cart[0])"
        }
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        self.segmentControll.addTarget(self, action: #selector(changeMenu), for: .valueChanged)
        self.textView.text = "Ваш заказ номер \(cart[0])"
        
    }
    

}

