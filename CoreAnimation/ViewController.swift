//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Sharad Kumar on 10/18/19.
//  Copyright © 2019 Sharad Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordTextFiled: ShakingTextField!
    @IBOutlet weak var avtarImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextFiled.delegate=self
        
        avtarImageView.isUserInteractionEnabled = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.addPulse))
        tapGestureRecognizer.numberOfTapsRequired = 1
        avtarImageView.addGestureRecognizer(tapGestureRecognizer)
        
        
    }
    
    @objc func addPulse(){
        let pulse = Pulsing(numberOfPulses: 1, radius: 110, position: avtarImageView.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.purple.cgColor
        
        self.view.layer.insertSublayer(pulse, below: avtarImageView.layer)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        passwordTextFiled.shake()
    }


}

