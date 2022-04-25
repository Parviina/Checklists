//
//  TextFieldTableViewCell.swift
//  Checklists
//
//  Created by New User on 25.04.2022.
//

import UIKit

class TextFieldTableViewCell: UITableViewCell {
    @IBOutlet weak var TextFieldCell: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
