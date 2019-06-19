//
//  SecondViewController.swift
//  Todos
//
//  Created by Timothy Wheeler on 6/17/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource,
	UITableViewDelegate {
	
	var todos = [String]()
	
	@IBOutlet weak var table: UITableView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let todosObject = UserDefaults.standard.object(forKey: "todos")
		
		todos = (todosObject as? Array<String>)!
		
		if todos.count > 0 {

			print(todos)

		}
		
		for todo in todos {
			
			print(todo)
			
		}
		
		
		table.reloadData()
	}
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return todos.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
		
		cell.textLabel?.text = todos[indexPath.row]
		
		cell.textLabel?.font = UIFont(name: "AvenirNext-Regular", size: 22.0)
		
		
		return cell
	}
	
	func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
		return true
	}
	
	func tableView(_ tableView: UITableView, commit editingStyle:   UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
		
		if (editingStyle == UITableViewCell.EditingStyle.delete) {
			table.beginUpdates()
			todos.remove(at: indexPath.row)
			table.deleteRows(at: [indexPath], with: UITableView.RowAnimation.top)
			table.endUpdates()
			
		}
	}
}

