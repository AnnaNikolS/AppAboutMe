//
//  ViewController.swift
//  AppAboutMe
//
//  Created by Анна on 13.02.2024.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    
    let gradientLogInView = CAGradientLayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 5
        
        gradientLogInView.frame = view.bounds
        gradientLogInView.colors = [UIColor.systemBlue.cgColor, UIColor.systemMint.cgColor, UIColor.systemIndigo.cgColor]
        gradientLogInView.locations = [0.0, 0.5, 1.0]
        view.layer.insertSublayer(gradientLogInView, at: 0)
        
        userNameTextField.textColor = .black
        userNameTextField.attributedPlaceholder = NSAttributedString(string: "User Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        passwordTextField.textColor = .black
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
       
        
    }

    @IBAction func pressedLogInButton() {
    }
    
}

