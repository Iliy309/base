//
//  TableViewCell.swift
//  UITableviewController
//
//  Created by Macbook pro on 29/12/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    public func refresh(_ model: Model) {
        nameLabel.text = model.name
        detailLabel.text = model.prof
    }
}
