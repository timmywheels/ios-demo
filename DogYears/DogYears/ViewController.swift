//
//  ViewController.swift
//  DogYears
//
//  Created by Timothy Wheeler on 6/13/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var answerLabel: UILabel!
	@IBOutlet weak var inputField: UITextField!
	
	@IBAction func submitButton(_ sender: Any) {
		
		if let age = inputField.text {
			
			if let ageAsNumber = Int(age) {
				
				let ageInDogYears = ageAsNumber * 7
				
				answerLabel.text = "Your dog is " + String(ageInDogYears) + " dog years old!"
				
			}
			
		}
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


}

