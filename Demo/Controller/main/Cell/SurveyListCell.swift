//
//  SurveyListCell.swift
//  TheChangeRoom
//
//  Created by lakum vishal on 09/01/19.
//  Copyright © 2019 lakum vishalbhai rajeshbhai. All rights reserved.
//

import UIKit

class SurveyListCell: UITableViewCell {
    
    @IBOutlet weak var lblOptions: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var customContentView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
//        self.customContentView.dropShadow()
//        self.customContentView.clipsToBounds = true
//        self.customContentView.cornerRadius = 5
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
