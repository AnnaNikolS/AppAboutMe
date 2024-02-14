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
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func pressedForgotPasswordButton() {
        showAlert(title: "Oops!", message: "Your password is \(userInfo.password) 😉")
    }
    
    @IBAction func pressedForgotNameButton() {
        showAlert(title: "Oops!", message: "Your name is \(userInfo.userName) 😉")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if (userNameTextField.text == userInfo.userName) && (passwordTextField.text == userInfo.password) {
            return true
        } else {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password")
        }
        return false
    }
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}


