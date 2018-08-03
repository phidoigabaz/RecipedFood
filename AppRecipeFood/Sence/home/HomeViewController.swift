//
//  HomeViewController.swift
//  AppRecipeFood
//
//  Created by admin on 7/30/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit
import ImageSlideshow

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //setupView()
    }
    
    func setupView() {
    
    }
    
    @IBAction func btnProfilePressed(_ sender: UIButton) {
        let profileVC = ProfileViewController.init(nibName: "ProfileViewController", bundle: nil)
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension HomeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 1
        case 1:
            return 1
        case 2:
            return 1
        case 3:
            return 3
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = HeaderTableViewCell.dequeueReuseCellWithNib(in: tableView, reuseIdentifier: HeaderTableViewCell.nibName())
            return cell
        }
        
        if indexPath.section == 1 {
            let cell = SliderImageTableViewCell.dequeueReuseCellWithNib(in: tableView, reuseIdentifier: SliderImageTableViewCell.nibName())
            return cell
        }
        
        if indexPath.section == 2 {
            let cell = CollectionTableViewCell.dequeueReuseCellWithNib(in: tableView, reuseIdentifier: CollectionTableViewCell.nibName())
            return cell
        }
        
        if indexPath.section == 3 {
            let cell = PlayListTableViewCell.dequeueReuseCellWithNib(in: tableView, reuseIdentifier: PlayListTableViewCell.nibName())
            return cell
        }
        return UITableViewCell(style: .default, reuseIdentifier: "cell")
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 50.0
        } else if indexPath.section == 1 {
            return 400.0
        } else if indexPath.section == 2 {
            return 250.0
        } else if indexPath.section == 3 {
            return 70.0
        }
        
        return 0.0
    }
}

