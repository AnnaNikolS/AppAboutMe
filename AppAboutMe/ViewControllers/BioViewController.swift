//
//  BioViewController.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet weak var bioLabel: UILabel!
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(userInfo.person.name) \(userInfo.person.surname) Bio"
        bioLabel.text = userInfo.person.bio
        view.addGradientOthersVC()
    }
}
