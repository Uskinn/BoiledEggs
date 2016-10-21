//
//  TypeTableViewCell.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/15/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class TypeTableViewCell: UITableViewCell, ConfigurableCell {
    @IBOutlet weak var typeLabel: UILabel!
    
    func configure(_ cellModel: Any) {
        
        guard let cellModel = cellModel as? BoiledType else { return }
        typeLabel.text = cellModel.rawValue
        typeLabel.font = UIFont(name: "Kailasa Regular", size: 102)
    }
}
