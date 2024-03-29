//
//  ShakingTextField.swift
//  CoreAnimation
//
//  Created by Sharad Kumar on 10/18/19.
//  Copyright © 2019 Sharad Kumar. All rights reserved.
//

import Foundation
import UIKit

class ShakingTextField: UITextField {
    
    func shake() {
        
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.05
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 4, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 4, y: self.center.y))
        
        self.layer.add(animation, forKey: "position")
    }
}
