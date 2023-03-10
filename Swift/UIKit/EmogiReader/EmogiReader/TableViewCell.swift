//
//  TableViewCell.swift
//  EmogiReader
//
//  Created by Macbook pro on 30/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var emogiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func set (object: Emogi) {
        self.emogiLabel.text = object.emogi
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
    }
}
