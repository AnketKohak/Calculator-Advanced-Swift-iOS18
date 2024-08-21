//
//  CalulationModel.swift
//  Calculator
//
//  Created by Anket Kohak on 20/08/24.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation
//MARK: - calculatorlogic
struct calculatorLogic {
    
    private var number:Double?
    //MARK: - intermediateCalculation
    var intermediateCalculation :(n1 : Double, calMethod: String)?
    //MARK: - setnumber
    mutating func setNumber(_ number: Double){
        self.number = number
    }
    //MARK: - calculate
    mutating func calculate(symbol: String)->Double?{
        if let n = number {
                   switch symbol {
                   case "+/-":
                       return n * -1
                   case "AC":
                       return 0
                   case "%":
                       return n * 0.01
                   case "=":
                       return performTwoNumCalculation(n2: n)
                   default:
                       intermediateCalculation = (n1:n , calMethod:symbol)
                   }
               }
        return nil
    }
    //MARK: - performTwoNumCalculation
    private func performTwoNumCalculation(n2: Double)->Double?{
        if let n1 = intermediateCalculation?.n1,let operation = intermediateCalculation?.calMethod
        {
            switch operation{
            case "+":return n1 + n2
            case "-":return n1 - n2
            case "×":return n1 * n2
            case "÷":return n1 / n2
            default : fatalError("fatal erro wrong operation passed")
            }
            
        }
        return nil
    }
}
