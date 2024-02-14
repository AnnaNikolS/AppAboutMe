//
//  TabBarController.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

import UIKit

final class TabBarController: UITabBarController {
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        guard let viewControllers else { return }
        
        viewControllers.forEach { viewController in
            if let welcomeViewController = viewController as? WelcomeViewController {
                welcomeViewController.userInfo = userInfo
                
                //                    } else if let navigationViewController = viewController as? UINavigationController {
                //                        let aboutUserVC = navigationViewController.topViewController
                //                        guard let aboutUserViewController = aboutUserVC as? AboutMeViewController else { return }
                //
                //                        aboutUserViewController.user = user
                //
                //                    }
                //
            } else {
                return
            }
            
            
        }
    }
}


