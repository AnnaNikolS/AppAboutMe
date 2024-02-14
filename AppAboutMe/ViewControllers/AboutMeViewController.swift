//
//  AboutMeViewController.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

import UIKit

final class AboutMeViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    var userInfo: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(userInfo.person.name) \(userInfo.person.surname)"
        
        image.image = UIImage(named: userInfo.person.photo)
        image.layer.cornerRadius = image.frame.width / 2
        
        nameLabel.text = userInfo.person.name
        surnameLabel.text = userInfo.person.surname
        postLabel.text = userInfo.person.post
        
        view.addGradientOthersVC()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let bioViewController = segue.destination as? BioViewController {
            bioViewController.userInfo = userInfo
        } else {  return }
    }
}
