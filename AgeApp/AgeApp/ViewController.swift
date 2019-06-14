//
//  ViewController.swift
//  AgeApp
//
//  Created by Timothy Wheeler on 6/13/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var ageField: UITextField!
	@IBOutlet weak var ageLabel: UILabel!
	
	@IBAction func submitButton(_ sender: Any) {
		
		if let age = ageField.text {
			
			ageLabel.text = "You are " + age + " years old!"
			
		}
		
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


}

