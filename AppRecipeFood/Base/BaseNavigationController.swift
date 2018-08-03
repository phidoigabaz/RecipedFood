//
//  BaseNavigationController.swift
//  AppRecipeFood
//
//  Created by admin on 7/30/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setupView() {
        navigationBar.barTintColor = UIColor.gray
        navigationBar.isOpaque = false
        navigationBar.isTranslucent = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
