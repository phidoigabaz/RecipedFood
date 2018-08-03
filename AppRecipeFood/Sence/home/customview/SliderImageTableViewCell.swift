//
//  SliderImageTableViewCell.swift
//  AppRecipeFood
//
//  Created by admin on 7/31/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import ImageSlideshow

class SliderImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageShow: ImageSlideshow!
    let imageArray = [ImageSource(imageString: "girl1"),ImageSource(imageString: "girl7"),ImageSource(imageString: "girl3")]
    @IBOutlet weak var pageControl: UIPageControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageShow.layer.masksToBounds = true
        imageShow.layer.cornerRadius = 5
        imageShow.setImageInputs(imageArray as! [InputSource])
        imageShow.slideshowInterval = 5
        imageShow.pageIndicatorPosition = .init(horizontal: .center, vertical: .under)
        imageShow.contentScaleMode = .scaleAspectFill
        pageControl.pageIndicatorTintColor = .lightGray
        pageControl.currentPageIndicatorTintColor = .darkGray
        imageShow.pageIndicator = pageControl
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}


