//
//  TabBarController.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

import UIKit

class TabBarController: UITabBarController {
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //dataTransferToVC()
        
    }
    
//    private func dataTransferToVC() {
//        guard let viewControllers else { return }
//        
//        viewControllers.forEach { viewController in
//            if let welcomeViewController = viewController as? WelcomeViewController {
//                welcomeViewController.user = user
//            } else if let navigationViewController = viewController as? UINavigationController {
//                let aboutUserVC = navigationViewController.topViewController
//                guard let aboutUserViewController = aboutUserVC as? AboutMeViewController else { return }
//                
//                aboutUserViewController.user = user
//                
//            }
//        }
//    }
}


