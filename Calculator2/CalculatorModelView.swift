//
//  CalculatorModelView.swift
//  Calculator2
//
//  Created by Mihlali Mazomba  on 2019/02/07.
//  Copyright © 2019 Mihlali Mazomba . All rights reserved.
//

import Foundation

class  CalculatorModelView{
    
 
var mycalculator :CalculatorModel
    
    var answer : String = ""
    
init(mathsexpression expression: String,calculationOperator Operator:String){
    
    
     var splitexpression = expression.components(separatedBy:Operator)
    
        // convert from string to integer
        
        if let convertedNumber1 = Int(splitexpression[0] ),let convertedNumer2 = Int(splitexpression[1]){
            
   self.mycalculator = CalculatorModel(firstnumber:convertedNumber1, secondnumber:convertedNumer2,numberoperator:Operator)
            
            self.answer = String(format:"%.1f",calculate())
        
            
}else{
              self.mycalculator = CalculatorModel(firstnumber:0, secondnumber:0,numberoperator:Operator)
            
    }
    }

    
    
    public var firstparameter : Int {
        return  mycalculator.firstnumber
    }
    
    public var secondparameter :Int {
        return mycalculator.secondnumber
    }
    
    public var operatorparameter : String{
        return mycalculator.numberoperator
    }
    
    
    func calculate() -> Double {
        
        switch operatorparameter {
        
        case "+":
            
            return Double(firstparameter + secondparameter)
            
        case "-" :
            return Double(firstparameter - secondparameter)
            

        case "÷":
            return Double(firstparameter/secondparameter)
            
        case "x":
            return Double(firstparameter * secondparameter)
            
            
        default:
            return 0
        }
        
    }
    
}
