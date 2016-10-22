//
//  TypeViewController.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/15/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class TypeViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let boilType = ["Soft", "Medium", "Hard"]
    let dataProvider: TableViewDataProvider = TableViewDataProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataProvider.cellIdentifier = "typeCell"
        let model: [BoiledType] = [.soft, .medium, .hard]
        dataProvider.model = model
        tableView.dataSource = dataProvider
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "timer" {
            let destinationVC = segue.destination as! TimerViewController
            let cell = sender as! TypeTableViewCell
            destinationVC.navigationItem.title = cell.typeLabel.text
        }
    }
}
