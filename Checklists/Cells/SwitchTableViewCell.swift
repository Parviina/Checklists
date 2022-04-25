//
//  SwitchTableViewCell.swift
//  Checklists
//
//  Created by New User on 25.04.2022.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {

    @IBOutlet weak var SwitchCell: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
