//
//  DateTableViewCell.swift
//  Checklists
//
//  Created by New User on 25.04.2022.
//

import UIKit

class DateTableViewCell: UITableViewCell {

    @IBOutlet weak var DateCell: UIDatePicker!
    override func awakeFromNib() {
        super.awakeFromNib()
         
        ///Initialization code
    }
   
    @IBOutlet weak var datePicker: UIDatePicker!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
