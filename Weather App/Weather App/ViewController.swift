//
//  ViewController.swift
//  Weather App
//
//  Created by Timothy Wheeler on 6/22/19.
//  Copyright © 2019 TimWheeler.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var message = ""
	
	@IBOutlet weak var cityInput: UITextField!
	@IBOutlet weak var weatherResultsLabel: UILabel!
	
	@IBAction func getWeather(_ sender: Any) {
		
		let city = cityInput.text!.replacingOccurrences(of: " ", with: "-")
		
		if let url = URL(string: "https://www.weather-forecast.com/locations/\(city)/forecasts/latest") {
		
		let request = NSMutableURLRequest(url: url)
		
		let task = URLSession.shared.dataTask(with: request as URLRequest) {
			
			data, response, error in
			
			
			if error != nil {
				
				print(error as Any)
				
			} else {
				
				if let unwrappedData = data {
					
					let dataString = NSString(data: unwrappedData, encoding: String.Encoding.utf8.rawValue)
					
					//					print(dataString!)
					
					var stringSeparator = "Weather Today </h2>(1&ndash;3 days)</span><p class=\"b-forecast__table-description-content\"><span class=\"phrase\">"
					
					if let contentArray = dataString?.components(separatedBy: stringSeparator) {
						
						if contentArray.count > 0 {
							
							stringSeparator = "</span></p></td><td class=\"b-forecast__table-description-cell--js\" colspan=\"9\"><span class=\"b-forecast__table-description-title\">"
							
							let newContentArray = contentArray[1].components(separatedBy: stringSeparator)
							
							if newContentArray.count > 0 {
								
								self.message = newContentArray[0].replacingOccurrences(of: "&deg;", with: "°")
								
								print(self.message)
								
							}
						}
					}
				}
			}
			
			if self.message == "" {
				
				self.message = "The weather there couldn't be found. Please try again."
				
			}
			
			DispatchQueue.main.sync(execute: {
				
				self.weatherResultsLabel.text = self.message
				
			})
			
		}
		
		task.resume()
		
		} else {
			
			weatherResultsLabel.text = "The weather there couldn't be found. Please try again."
			
		}
		
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		
		
		
		
		
		
	}


}

