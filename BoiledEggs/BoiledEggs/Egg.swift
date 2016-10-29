//
//  Egg.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/15/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import Foundation

enum EggSize: String {
    case large = "Large"
    case extraLarge = "Extra Large"
    case jumbo = "Jumbo"
}

enum BoiledType: String {
    case soft = "Soft"
    case medium = "Medium"
    case hard = "Hard"
}

struct Eggs {
    let eggSize: EggSize
    let boiledType: BoiledType
    
}

