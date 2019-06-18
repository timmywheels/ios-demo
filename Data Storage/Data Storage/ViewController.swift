//
//  ViewController.swift
//  Data Storage
//
//  Created by Timothy Wheeler on 6/16/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		UserDefaults.standard.set("Tim", forKey: "name")
		
		let nameObject = UserDefaults.standard.object(forKey: "name")
		
		if let name = nameObject as? String {
			print(name)
		}
		
		let arr = [1, 2, 3, 4, 5]
		
		UserDefaults.standard.set(arr, forKey: "array")
		
		let arrayObject = UserDefaults.standard.object(forKey: "array")
		
		if let array = arrayObject as? NSArray {
			
			print(array)
			
		}
		
		
	}


}

