//
//  ViewController.swift
//  BullsEye
//
//  Created by Guga Gongadze on 11/17/18.
//  Copyright © 2018 Guga Gongadze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        let rounderValue = slider.value.rounded()
        currentValue = Int(rounderValue)
    }
    
    @IBAction func alertHello() {
        let message = "The value of the slider is: \(currentValue)"
        let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let rounderValue = slider.value.rounded()
        currentValue = Int(rounderValue)
    }
}

