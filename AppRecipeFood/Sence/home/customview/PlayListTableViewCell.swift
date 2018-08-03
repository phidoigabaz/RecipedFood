//
//  PlayListTableViewCell.swift
//  AppRecipeFood
//
//  Created by admin on 8/3/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class PlayListTableViewCell: UITableViewCell {

    @IBOutlet weak var nameFoodlabel: UILabel!
    @IBOutlet weak var kindofFoodlabel: UILabel!
    @IBOutlet weak var foodImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        foodImage.layer.masksToBounds = true
        foodImage.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
