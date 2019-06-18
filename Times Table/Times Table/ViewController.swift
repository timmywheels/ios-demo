//
//  ViewController.swift
//  Times Table
//
//  Created by Timothy Wheeler on 6/16/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 100
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		
		let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
		
		cell.textLabel?.text = String((Int(slider.value * 100)) * (indexPath.row + 1))
		
		return cell
		
	}
	

	
	@IBOutlet weak var slider: UISlider!
	
	@IBOutlet weak var table: UITableView!
	
	@IBAction func sliderInput(_ sender: Any) {
		
		table.reloadData()
		print(slider.value)
	}
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}


}

