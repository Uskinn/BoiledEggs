//
//  Timer.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/21/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import Foundation

class EggTimer {
    
   class func timeFormatted(totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }    
}
