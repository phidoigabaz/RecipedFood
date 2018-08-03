//
//  ImageCollectionViewCell.swift
//  AppRecipeFood
//
//  Created by admin on 8/2/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

protocol ImageCollectionViewCellDelegate: NSObjectProtocol {
    func didSelectCell(_ cell: ImageCollectionViewCell, sender: Any )
}

class ImageCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var trendImage: UIImageView!
    weak var delegate: ImageCollectionViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        trendImage.layer.cornerRadius = 10
        trendImage.layer.masksToBounds = true
    }
    
    @IBAction func btnDetailFoodPressed(_ sender: Any) {
        delegate?.didSelectCell(self, sender: sender)
    }
}
