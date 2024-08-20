//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    var isFinishTypingNumber: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
       
        if let numValue = sender.currentTitle {
            
            if isFinishTypingNumber{
                displayLabel.text = numValue
                isFinishTypingNumber = false
            }
            else{
                displayLabel.text = displayLabel.text!+numValue
            }
        }
    }

}

