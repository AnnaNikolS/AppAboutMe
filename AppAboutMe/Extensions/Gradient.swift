//
//  Extensions.swift
//  AppAboutMe
//
//  Created by Анна on 14.02.2024.
//

import UIKit

extension UIView {
    func addGradient() {
        let gradient = CAGradientLayer()
        
        gradient.frame = bounds
        gradient.colors = [UIColor.systemMint.cgColor, UIColor.myPink.cgColor]
        gradient.locations = [0.0, 1.0]
        layer.insertSublayer(gradient, at: 0)
    }
}
