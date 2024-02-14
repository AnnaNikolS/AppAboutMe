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
    
    var name = ""
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
       
        welcomeLabel.text = "\(userInfo.userName)"
//        myNameLabel.text = "My name is \(user.person.surname)"
        
        view.addGradientOthersVC()
       
    }
}
