//
//  ShowVC.swift
//  UiCollectionView
//
//  Created by Macbook pro on 29/12/22.
//

import UIKit

class ShowVC: UIViewController {

  
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            guard let image = menu?.imageName else {return}
            imageView.image = UIImage(named: image)
        }
    }
        
    @IBOutlet weak var nameLabel: UILabel! {
        didSet {
            nameLabel.text = menu?.name
        }
    }
    
    var menu : Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

}
