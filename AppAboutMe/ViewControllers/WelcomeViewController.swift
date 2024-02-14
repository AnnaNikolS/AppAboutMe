//
//  WelcomeViewController.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var myNameLabel: UILabel!
    
    let gradientWelcomeView = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addGradient()
       
    }
}
