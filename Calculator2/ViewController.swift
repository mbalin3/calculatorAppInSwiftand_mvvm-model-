//
//  ViewController.swift
//  Calculator2
//
//  Created by Mihlali Mazomba  on 2019/02/07.
//  Copyright © 2019 Mihlali Mazomba . All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var viewLabel: UILabel!
    
    
    var fullexpression: String = ""
    var Operator : String = ""
    
    var numbercliked : String  = ""{
        didSet{
            
            
            fullexpression += numbercliked
            viewLabel.text = fullexpression
            
        }
        
    }
    
    @IBAction func ClickNumber(_ sender: UIButton){
        viewLabel.text = sender.currentTitle
        if let num =  sender.currentTitle{
            numbercliked = num
        }
    }
    
    @IBAction func SendExpression_to_view_controller(_ sender: UIButton) {
        // initailizing viewmodel in this class
        let calModelView = CalculatorModelView(mathsexpression: fullexpression,calculationOperator: Operator)
        
        // display the answer from the controller
        
        viewLabel.text = calModelView.answer
    }
    
    @IBAction func SetOperation(_ sender: UIButton) {
        if let operand = sender.currentTitle{
            self.Operator = operand
            if(Operator == "c"){
                fullexpression = ""
                viewLabel.text = String(0)
            }
        }
    }
    
    
    
    
    
    
    
}

