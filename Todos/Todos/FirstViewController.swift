//
//  FirstViewController.swift
//  Todos
//
//  Created by Timothy Wheeler on 6/17/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITextFieldDelegate {
	
	var todos = [String]()

	@IBOutlet weak var addTodoInput: UITextField!
	
	
	@IBAction func addTodoButton(_ sender: Any) {
		
		if let newTodo = addTodoInput.text {
			
			todos.append(newTodo)
			
			addTodoInput.text = ""
			
			UserDefaults.standard.set(todos, forKey: "todos")
			
		}
		
		print(todos)
		
	}
	
	
//	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let todoInputBorderColor = UIColor(red: 221/255, green: 221/255, blue: 221/255, alpha: 1.0) /* #dddddd */
		addTodoInput.layer.borderColor = todoInputBorderColor.cgColor
		
		addTodoInput.layer.borderWidth = 1.0
		
		
	}

	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		
		self.view.endEditing(true)
		
	}
	
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		
		textField.resignFirstResponder()
		
		return true
		
	}

}

