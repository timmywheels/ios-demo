//
//  ViewController.swift
//  WebContent
//
//  Created by Timothy Wheeler on 6/19/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	
	@IBOutlet weak var webView: UIWebView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		if let url = URL(string: "https://timwheeler.com") {
			
			webView.loadRequest(URLRequest(url: url))
		}
	}


}

