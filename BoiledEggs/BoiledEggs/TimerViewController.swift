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
    
    @IBOutlet weak var pauseOutlet: MARoundButton!
    @IBOutlet weak var startOutlet: MARoundButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    @IBOutlet weak var behindButtonLabel: UILabel!
    
    var seconds: Int = 0
    var timer = Timer()
    var enabled: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pauseButtonFirstLook()
        configureBehindButtonLabel()
        
        
        timerLabel.text = String(EggTimer.timeFormatted(totalSeconds: self.seconds))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startButton(_ sender: AnyObject) {
        
        startOutlet.isEnabled = false
        startOutlet.backgroundColor = UIColor(red:0.99, green:0.62, blue:0.24, alpha:1.0)
        startOutlet.borderColor = .red
        
        pauseOutlet.isEnabled = true
        pauseOutlet.borderColor = .red
        pauseOutlet.backgroundColor = .white
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.updateTimer) , userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {

        timer.invalidate()
        
        pauseOutlet.isEnabled = false
        pauseButtonFirstLook()
        
        startOutlet.isEnabled = true
        startOutlet.borderColor = .brown
        startOutlet.backgroundColor = .white
    }
    
    func configureBehindButtonLabel() {
        behindButtonLabel.backgroundColor = UIColor(red:1.00, green:0.84, blue:0.02, alpha:1.0)
        behindButtonLabel.layer.cornerRadius = 53.5
        behindButtonLabel.clipsToBounds = true
        
        viewLabel.backgroundColor = UIColor(red:1.00, green:0.84, blue:0.02, alpha:1.0)
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
    }
}

