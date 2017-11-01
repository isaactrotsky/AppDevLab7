//
//  TacoStandTVCell.swift
//  FIrebaseBasic
//
//  Created by R on 10/30/16.
//  Copyright © 2016 R. All rights reserved.
//

import UIKit

class TacoStandTVCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var specialityLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
