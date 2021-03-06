//
//  CustomTabBarViewController.swift
//  Kipalog
//
//  Created by DTVD on 2017/12/22.
//  Copyright © 2017 Kipalog. All rights reserved.
//

import UIKit

class CustomTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
        let homeViewController = homeStoryboard.instantiateInitialViewController() as! HomeViewController

        let searchViewController = SearchViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let notificationsViewController = NotificationsViewController(collectionViewLayout: UICollectionViewFlowLayout())

        let profileStoryboard = UIStoryboard(name: "Profile", bundle: nil)
        let profileViewController = profileStoryboard.instantiateInitialViewController() as! ProfileViewController

        viewControllers = [
            homeViewController.buildTabController(),
            searchViewController.buildTabController(),
            notificationsViewController.buildTabController(),
            profileViewController.buildTabController()
        ]

        tabBar.tintColor = UIColor.kipalog.masterColor

        if let tabBarItems = tabBar.items {
            tabBarItems[2].badgeValue = "3"
        }
    }
}
