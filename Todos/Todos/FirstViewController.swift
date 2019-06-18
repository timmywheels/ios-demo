//
//  FirstViewController.swift
//  Todos
//
//  Created by Timothy Wheeler on 6/17/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
	
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
		// Do any additional setup after loading the view, typically from a nib.
	}


}

