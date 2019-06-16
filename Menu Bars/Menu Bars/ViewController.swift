//
//  ViewController.swift
//  Menu Bars
//
//  Created by Timothy Wheeler on 6/16/19.
//  Copyright © 2019 Timothy Wheeler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()

    @IBAction func cameraButton(_ sender: Any) {
        
        timer.invalidate()
        
        print("camera button pressed...")
        
    }
    @IBAction func homeButton(_ sender: Any) {
        
        print("home button pressed...")
        
    }
    @IBAction func replyButton(_ sender: Any) {
        
        print("reply button pressed...")
        
    }
    @IBAction func composeButton(_ sender: Any) {
        
        print("compose button pressed...")
        
    }
    @IBAction func deleteButton(_ sender: Any) {
        
        print("delete button pressed...")
        
    }
    
    
    @objc func processTimer() {
        
        print("a second has passed...")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
        
        
        
    }


}

