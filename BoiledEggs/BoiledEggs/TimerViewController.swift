//
//  TimerViewController.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/20/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import MARoundButton
import LTMorphingLabel

class TimerViewController: UIViewController {
    
    @IBOutlet weak var resetOutlet: MARoundButton!
    @IBOutlet weak var pauseOutlet: MARoundButton!
    @IBOutlet weak var startOutlet: MARoundButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var behindButtonLabel: UILabel!
    
    var seconds: Int = 0
    var timer = Timer()
    var setTitleStartButton: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pauseButtonFirstLook()
        configureBehindButtonLabel()
        
        startOutlet.setTitle("Start", for: UIControlState.normal)
        
        timerLabel.text = String(EggTimer.timeFormatted(totalSeconds: self.seconds))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startButton(_ sender: AnyObject) {
        
        startOutlet.isEnabled = false
        startOutlet.backgroundColor = UIColor(red:0.99, green:0.62, blue:0.24, alpha:1.0)
        startOutlet.borderColor = .gray
        
        
//        if setTitleStartButton == true {
//            startOutlet.setTitle("Reset", for: UIControlState.normal)
//            setTitleStartButton = false
//        } else if setTitleStartButton == false {
//            startOutlet.setTitle("Start", for: UIControlState.normal)
//            setTitleStartButton = true
//        }
        
        pauseOutlet.isEnabled = true
        pauseOutlet.borderColor = UIColor(red:1.00, green:0.70, blue:0.06, alpha:1.0)
        pauseOutlet.backgroundColor = .white
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.updateTimer) , userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        timer.invalidate()
        
        pauseOutlet.isEnabled = false
        pauseButtonFirstLook()
        
        startOutlet.isEnabled = true
        startOutlet.borderColor = UIColor(red:1.00, green:0.70, blue:0.06, alpha:1.0)
        startOutlet.backgroundColor = .white
    }
    
    func configureBehindButtonLabel() {
        behindButtonLabel.backgroundColor = UIColor(red:0.99, green:0.30, blue:0.01, alpha:1.0)
        behindButtonLabel.layer.cornerRadius = 53.5
        behindButtonLabel.clipsToBounds = true
        
        viewLabel.backgroundColor = UIColor(red:0.99, green:0.30, blue:0.01, alpha:1.0)
    }
    
    func updateTimer() {
        if seconds > 0 {
            seconds -= 1
            timerLabel.text = String(EggTimer.timeFormatted(totalSeconds: self.seconds))
        }
    }
    
    func pauseButtonFirstLook() {
        pauseOutlet.isEnabled = false
        pauseOutlet.borderColor = .gray
        pauseOutlet.backgroundColor = UIColor(red:0.99, green:0.62, blue:0.24, alpha:1.0)
        pauseOutlet.setTitle("Pause", for: UIControlState.normal)
        
        startOutlet.borderColor = UIColor(red:0.32, green:0.69, blue:0.26, alpha:1.0)
    }
}

