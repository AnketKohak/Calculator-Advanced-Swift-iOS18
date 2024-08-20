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
        
        isFinishTypingNumber = true
        guard let number = Double(displayLabel.text!)else{
            fatalError("could not convert to Double")
        }
        if sender.currentTitle == "+/-"{
            displayLabel.text = String(number * -1)
        }else if sender.currentTitle == "AC" {
            displayLabel.text = "0"
        }else if sender.currentTitle == "%"{
            displayLabel.text = String(number * 0.01)
        }
        
    }
    
    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let numValue = sender.currentTitle {
            
            if isFinishTypingNumber{
                displayLabel.text = numValue
                isFinishTypingNumber = false
            }
            else{
                if numValue == "."{
                    guard let currentDisplayValue = Double(displayLabel.text!) else {
                        fatalError("could not convert to Double")
                    }
                    let isInt = floor(currentDisplayValue) == currentDisplayValue
                    if !isInt{
                        return
                    }
                }
                displayLabel.text = displayLabel.text!+numValue
                
            }
        }
    }
    
}

