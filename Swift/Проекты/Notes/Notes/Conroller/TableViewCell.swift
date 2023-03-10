//
//  TableViewCell.swift
//  Notes
//
//  Created by Macbook pro on 02/01/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var labelNotes: UIImageView!
    @IBOutlet weak var nameNotes: UILabel!
    @IBOutlet weak var descriptionNotes: UILabel!


    
        
        
    func set (object: Notes) {
        labelNotes.image = UIImage(systemName: "\(object.label)")
        nameNotes.text = object.name
        descriptionNotes.text = object.description
        descriptionNotes.font = UIFont(name: object.font, size: object.size)
        nameNotes.font = UIFont(name: object.font, size: object.size)
        
        
        
    }
}
