//
//  EggTableViewCell.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/15/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class EggTableViewCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var eggLabel: UILabel!
    
    func configure(_ cellModel: Any) {
        
        guard let cellModel = cellModel as? EggSize else { return }
        eggLabel.text = cellModel.rawValue
        eggLabel.font = UIFont(name: "Menlo", size: 30)
    }
}
