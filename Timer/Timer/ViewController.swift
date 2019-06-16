//
//  ViewController.swift
//  Timer
//
//  Created by Timothy Wheeler on 6/16/19.
//  Copyright © 2019 Timothy Wheeler. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController {
    
    var timer = Timer()
    
    var countDown: Int!
    
    var isTimerRunning = false
    
    var initialTimerValue = "60"
    
    var gradientLayer = CAGradientLayer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    
    @IBAction func stopTimer(_ sender: Any) {
        
        self.setTimerStoppedBackground()
        timer.invalidate()
        isTimerRunning = false
        print("timer stopped...")
        
    }
    
    
    @IBAction func startTimer(_ sender: Any) {
        
        if !isTimerRunning {
            setTimerStartedBackground()
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
            isTimerRunning = true
            print("timer started...")
        }
        
        
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        
        setGradientBackground()
        countDown = Int(initialTimerValue)
        timerLabel.text = String(countDown)
        timer.invalidate()
        isTimerRunning = false
        print("timer reset...")
        
        
    }
    
    @IBAction func addSixtySecondsToTimer(_ sender: Any) {
        
        countDown += 60
        timerLabel.text = String(countDown)
        print("sixty seconds added...")
        
    }
    @IBAction func addTenSecondsToTimer(_ sender: Any) {
        
        countDown += 10
        timerLabel.text = String(countDown)
        print("ten seconds added...")
        
    }
    
    @IBAction func removeSixtySecondsFromTimer(_ sender: Any) {
        
        if (countDown > 60) {
            countDown -= 60
            timerLabel.text = String(countDown)
            print("sixty seconds removed...")
        }
        
        
    }
    @IBAction func removeTenSecondsFromTimer(_ sender: Any) {
        
        if (countDown > 10) {
            countDown -= 10
            timerLabel.text = String(countDown)
            print("ten seconds removed...")
        }
        
    }
    
    
    @objc func processTimer() {
        
        if countDown > 0 {
            countDown -= 1
            timerLabel.text = String(countDown)
        }
        
        if countDown == 0 {
            
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setGradientBackground()
        
        timerLabel.text = initialTimerValue
        
        countDown = Int(timerLabel.text!)

    }
    
    override func viewWillAppear(_ animated: Bool) {
        setGradientBackground()
        super.viewWillAppear(animated)
    }
    
    func setGradientBackground() {
        print("main gradient set...")
        let colorTop = UIColor(red: 0/255, green: 198/255, blue: 255/255, alpha: 1.0).cgColor /* #00c6ff */
        let colorBottom = UIColor(red: 0/255, green: 114/255, blue: 255/255, alpha: 1.0).cgColor /* #0072ff */
        
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func setTimerStartedBackground() {
        print("started gradient set...")
        let colorTop =  UIColor(red: 168/255, green: 224/255, blue: 99/255, alpha: 1.0).cgColor /* #a8e063 */
        let colorBottom = UIColor(red: 86/255, green: 171/255, blue: 47/255, alpha: 1.0).cgColor /* #56ab2f */
        
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    func setTimerStoppedBackground() {
        print("stopped gradient set...")
        let colorTop =  UIColor(red: 239/255, green: 71/255, blue: 58/255, alpha: 1.0).cgColor  /* #ef473a */
        let colorBottom = UIColor(red: 203/255, green: 45/255, blue: 62/255, alpha: 1.0).cgColor /* #cb2d3e */
        
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
    
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }


}

