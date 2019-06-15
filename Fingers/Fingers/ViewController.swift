//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Timothy Wheeler on 6/15/19.
//  Copyright © 2019 Timothy Wheeler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guessInput: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    
    
    @IBAction func guessButton(_ sender: Any) {
        
        answerLabel.numberOfLines = 0
        
        let numberOfFingers = generateFingerCount()
        
        var isGuessAnInt = false
        
        if let guess = guessInput.text {
            
            if let guessAsInt = Int(guess) {
                
                isGuessAnInt = true
                
                
                if guessAsInt == numberOfFingers {
                    
                    answerLabel.textColor = UIColor.green
                    
                    answerLabel.text = "That's correct! Great guess!"
                    
                    guessInput.text = ""
                    
                } else {
                    
                    
                    answerLabel.textColor = UIColor.red
                    
                    if numberOfFingers == 1 {
                        
                        answerLabel.text = "Wrong! I was holding up \n \(numberOfFingers) finger!"
                    } else {
                        answerLabel.text = "Wrong! I was holding up \n \(numberOfFingers) fingers!"
                    }
                    
                    guessInput.text = ""
                    
                }
                
            } else if !isGuessAnInt {
                
                answerLabel.textColor = UIColor.red
                
                self.answerLabel.text = "Please enter a number between 0 & 5"
                
            }
        }
    }
    
    func generateFingerCount() -> Int {
        
        let answer = Int.random(in: 0 ... 5)
        
        return answer
        
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

