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
    
    let dataProvider: TableViewDataProvider = TableViewDataProvider()
    let model: [BoiledType] = [.soft, .medium, .hard]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataProvider.cellIdentifier = "typeCell"
        dataProvider.model = model
        tableView.dataSource = dataProvider
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TimerViewController
        let cell = sender as! TypeTableViewCell
        destinationVC.navigationItem.title = cell.typeLabel.text
        destinationVC.seconds = 200
        
    }
}












