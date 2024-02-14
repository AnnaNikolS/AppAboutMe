//
//  BioViewController.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

import UIKit

class BioViewController: UIViewController {
    
    @IBOutlet weak var bioLabel: UILabel!
    
    var userInfo: User!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientOthersVC()
    }

}
