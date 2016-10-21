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
    
    var seconds = 0
    var minutes = 0
    var timer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewLabel()
        configureBehindButtonLabel()
        
        
        
            }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButton(_ sender: AnyObject) {
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.updateTimer) , userInfo: nil, repeats: true)
        
        
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        timer.invalidate()
    }
    
    func configureViewLabel() {
        
        viewLabel.backgroundColor = UIColor(red:1.00, green:0.84, blue:0.02, alpha:1.0)
    }
    
    func configureBehindButtonLabel() {
        
        //behindButtonLabel.backgroundColor = .blue
        behindButtonLabel.layer.cornerRadius = 52.0
        behindButtonLabel.clipsToBounds = true
    }
    
    func updateTimer() {
        
        seconds = seconds + 1
        timerLabel.text = "\(seconds)"
        
    }
    
}
