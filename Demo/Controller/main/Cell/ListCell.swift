//
//  ListCell.swift
//  Demo
//
//  Created by vishal lakum on 26/11/19.
//  Copyright © 2019 vishal lakum. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
