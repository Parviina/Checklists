//
//  ItemsTableViewCell.swift
//  Checklists
//
//  Created by New User on 22.04.2022.
//

import UIKit

class ItemsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ItemLabel: UILabel!
    @IBOutlet weak var CheckMark: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
