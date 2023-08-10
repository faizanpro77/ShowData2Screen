//
//  UserCell.swift
//  ShowData2Screen
//
//  Created by MD Faizan on 10/08/23.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var userData: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
