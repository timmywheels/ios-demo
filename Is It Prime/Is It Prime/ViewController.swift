//
//  ViewController.swift
//  Is It Prime
//
//  Created by Timothy Wheeler on 6/15/19.
//  Copyright © 2019 Timothy Wheeler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        
        let userEnteredInt = Int(inputField.text!)
    
        
        if let primeNumberGuess = userEnteredInt {
            
            var numberOfFactors = 0
            
            for number in 1...primeNumberGuess {
                
                if primeNumberGuess % number == 0 {
                    
                    numberOfFactors += 1
                    
                }
                
                if numberOfFactors > 2 || primeNumberGuess == 1 {
                    
                    answerLabel.textColor = UIColor.red
                    
                    answerLabel.text = "\(primeNumberGuess) is not prime"
                    
                } else  {
                    
                    answerLabel.textColor = UIColor(red: 100/255, green: 183/255, blue: 0/255, alpha: 1.0)
                    
                    answerLabel.text = "\(primeNumberGuess) is prime"
                    
                }
                
            }
            
            inputField.text = ""
            
        } else {
            
            answerLabel.textColor = UIColor.red
            
            answerLabel.text = "Please enter a positive whole number"
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

