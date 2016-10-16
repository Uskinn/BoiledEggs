//
//  TableViewDataProvider.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/15/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class TableViewDataProvider: NSObject, UITableViewDataSource {
    
    var model: [Any] = []
    var cellIdentifier: String = ""
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        if let configurableCell = cell as? ConfigurableCell {
            configurableCell.configure(cellModel: model[indexPath.row])
            return configurableCell as! UITableViewCell
        } else {
            return cell
        }
    }
    
}
