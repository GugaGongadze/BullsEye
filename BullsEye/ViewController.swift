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
    var targetValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let rounderValue = slider.value.rounded()
        currentValue = Int(rounderValue)
        startNewRound()
    }
    
    @IBAction func alertHello() {
        let message = "The value of the slider is: \(currentValue)" +
        "\nThe target value is: \(targetValue)"
        
        let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let rounderValue = slider.value.rounded()
        currentValue = Int(rounderValue)
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String(targetValue)
    }
}

