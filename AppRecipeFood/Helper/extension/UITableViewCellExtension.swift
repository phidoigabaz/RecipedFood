//
//  UITableViewCellExtension.swift
//  imuzik
//
//  Created by Henry on 2/24/17.
//  Copyright © 2017 Tung Duong Thanh. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {
    
    class func dequeueReuseCellWithClass(in tableView: UITableView, reuseIdentifier text: String) -> Self {
        return dequeueReuseCellWithClassTemplate(in: tableView, reuseIdentifier: text)
    }
    private class func dequeueReuseCellWithClassTemplate<T> (in tableView: UITableView,
                                                         reuseIdentifier text: String) -> T {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: text)
        if cell == nil {
            cell = self.init(style: .default, reuseIdentifier: text)
        }
        return cell as! T
    }

    class func dequeueReuseCellWithNib(in tableView: UITableView,
                                       reuseIdentifier text: String,
                                       nibName nibNameOrNil: String? = nil) -> Self {
        return dequeueReuseCellWithNibTemplate(in: tableView, reuseIdentifier: text, nibName: nibNameOrNil)
    }

    private class func dequeueReuseCellWithNibTemplate<T> (in tableView: UITableView,
                                                       reuseIdentifier text: String,
                                                       nibName nibNameOrNil: String?) -> T {
        var cell: UITableViewCell! = tableView.dequeueReusableCell(withIdentifier: text)
        if cell == nil {
            var cellNibName: String! = nibNameOrNil
            if cellNibName == nil {
                cellNibName = String(describing: self)
            }
            let nib = UINib(nibName: cellNibName, bundle: nil)
            tableView.register(nib, forCellReuseIdentifier: text)
            cell = tableView.dequeueReusableCell(withIdentifier: text)
        }
        return cell as! T
    }

    class func nibName() -> String {
        var nibName = String(describing: self)

        if UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad {
            if let pathXib = Bundle.main.path(forResource: "\(nibName)_iPad", ofType: "nib") {
                if FileManager.default.fileExists(atPath: pathXib) {
                    nibName = "\(nibName)_iPad"
                }
            }
        }

        return nibName
    }
}
