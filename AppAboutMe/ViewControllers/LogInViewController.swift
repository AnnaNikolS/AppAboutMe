//
//  ViewController.swift
//  AppAboutMe
//
//  Created by Анна on 13.02.2024.
//

import UIKit

final class LogInViewController: UIViewController {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgotNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    let gradientLogInView = CAGradientLayer()
   
    
    private let userInfo = User.userInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        forgotNameButton.tintColor = .myRed
        forgotPasswordButton.tintColor = .myRed
        
        userNameTextField.text = userInfo.userName
        passwordTextField.text = userInfo.password
        
        logInButton.layer.cornerRadius = 5
        logInButton.backgroundColor = .myRed
        
        gradientLogInView.frame = view.bounds
        gradientLogInView.colors = [UIColor.myRed.cgColor, UIColor.myYellow.cgColor]
        gradientLogInView.locations = [0.0, 1.0]
        view.layer.insertSublayer(gradientLogInView, at: 0)
        
        userNameTextField.textColor = .black
        userNameTextField.attributedPlaceholder = NSAttributedString(string: "User Name", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        passwordTextField.textColor = .black
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        
        
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let tabBarController = segue.destination as? TabBarController {
            tabBarController.user = userInfo
        } else {
            return
        }
    }
}


