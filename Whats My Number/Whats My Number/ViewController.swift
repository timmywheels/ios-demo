//
//  ViewController.swift
//  Whats My Number
//
//  Created by Timothy Wheeler on 6/17/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var savedPhoneNumber: String?
	
	var phoneNumberObject: Any?

	@IBOutlet weak var phoneNumberInput: UITextField!
	
	@IBOutlet weak var phoneNumberLabel: UILabel!
	
	@IBAction func saveButton(_ sender: Any) {
		
		let phoneNumber = phoneNumberInput.text
		
	UserDefaults.standard.set(phoneNumber, forKey: "phoneNumber")
		
		savedPhoneNumber = phoneNumber
		
		self.setPhoneNumberLabelText()
		
	}
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		phoneNumberObject = UserDefaults.standard.object(forKey: "phoneNumber")
		
		savedPhoneNumber = phoneNumberObject as? String
		
		self.setPhoneNumberLabelText()
		
	}
	
	func setPhoneNumberLabelText() {
		
		if savedPhoneNumber == phoneNumberObject as? String {
			
			phoneNumberLabel.text = savedPhoneNumber
			
		}
		
	}


}

