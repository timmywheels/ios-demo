//
//  ViewController.swift
//  Table Views
//
//  Created by Timothy Wheeler on 6/16/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
	
	var cellContent = ["Tim Wheeler", "Andrea Beland", "Kevin Wheeler", "Lisa Curro"]
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return cellContent.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
		
		cell.textLabel?.text = cellContent[indexPath.row]
		
		return cell
		
	}
	

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


}

