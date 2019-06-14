//
//  ViewController.swift
//  My First App
//
//  Created by Timothy Wheeler on 6/12/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var label: UILabel!
	@IBOutlet weak var textField: UITextField!
	@IBAction func ButtonClicked(_ sender: Any) {
		
		print("Button clicked...")
		
		if let name = textField.text {
			label.text = "Welcome back, " + name
		}
		

		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		print("Hello, World")
		
	}


}

