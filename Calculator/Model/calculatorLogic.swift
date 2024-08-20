//
//  CalulationModel.swift
//  Calculator
//
//  Created by Anket Kohak on 20/08/24.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

struct calculatorLogic {
    
    var number:Double
    
    init(number: Double) {
        self.number = number
    }
    func calculate(symbol: String)->Double?{
        if symbol == "+/-"{
            return number * -1
        }else if symbol == "AC" {
            return  0
        }else if symbol == "%"{
            return number * 0.01
        }
        return nil
    }
}
