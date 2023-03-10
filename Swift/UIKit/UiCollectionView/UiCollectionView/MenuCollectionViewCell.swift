//
//  MenuCollectionViewCell.swift
//  UiCollectionView
//
//  Created by Macbook pro on 29/12/22.
//

import UIKit

class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    
    var menu: Menu? {
        didSet{
            labelName.text = menu?.name
            if let image = menu?.imageName {
                imageView.image = UIImage(named: image)
            }
        }
    }
    
}
