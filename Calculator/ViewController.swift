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
    
    var displayValue: Double {
        get{
            guard let number = Double(displayLabel.text!) else{
                fatalError("could not convert to Double")
            }
            return number
        }
        set{
            displayLabel.text = String(newValue)
        }
       
    }
    private var calculator = calculatorLogic()
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        isFinishTypingNumber = true
        calculator.setNumber(displayValue)
        if let calMethod = sender.currentTitle
        {
            guard let result = calculator.calculate(symbol: calMethod) else{
                fatalError("could not calculate")
            }
            displayValue = result
            
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
                    
                    let isInt = floor(displayValue) == displayValue
                    if !isInt{
                        return
                    }
                }
                displayLabel.text = displayLabel.text!+numValue
                
            }
        }
    }
    
}

