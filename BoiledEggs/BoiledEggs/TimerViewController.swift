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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pauseButtonFirstLook()
        configureBehindButtonLabel()

        self.startOutlet.borderColor = UIColor(red:0.00, green:0.60, blue:0.60, alpha:1.0)
        self.timerLabel.text = String(EggTimer.timeFormatted(totalSeconds: self.seconds))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startButton(_ sender: AnyObject) {
        self.startOutlet.borderColor = .black
        
        self.pauseOutlet.isEnabled = true
        self.pauseOutlet.borderColor = .red
        self.pauseOutlet.backgroundColor = .white
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.updateTimer) , userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        timer.invalidate()
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
        self.pauseOutlet.isEnabled = false
        self.pauseOutlet.borderColor = .gray
        self.pauseOutlet.backgroundColor = UIColor(red:0.99, green:0.62, blue:0.24, alpha:1.0)
    }
}

