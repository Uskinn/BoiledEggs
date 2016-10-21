//
//  TimerViewController.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/20/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import MARoundButton

class TimerViewController: UIViewController {
    @IBOutlet weak var pauseOutlet: MARoundButton!
    @IBOutlet weak var startOutlet: MARoundButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var viewLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        configureViewLabel()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func startButton(_ sender: AnyObject) {
        
        
    }
    
    @IBAction func pauseButton(_ sender: AnyObject) {
        
        
    }
    
    func configureViewLabel() {
        
        viewLabel.backgroundColor = UIColor(red:1.00, green:0.84, blue:0.02, alpha:1.0)
    }
}
