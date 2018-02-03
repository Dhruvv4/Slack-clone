//
//  GradientView.swift
//  Smack
//
//  Created by Dhruv Vaghela on 18/01/18.
//  Copyright © 2018 Dhruv Vaghela. All rights reserved.
//

import UIKit

@IBDesignable // <- This will render inside the storyboard

class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [topColor.cgColor,bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
