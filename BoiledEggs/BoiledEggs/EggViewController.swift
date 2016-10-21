//
//  ViewController.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/13/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    let eggNames = ["Large", "Extra Large", "Jumbo"]
    let dataProvider: TableViewDataProvider = TableViewDataProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataProvider.cellIdentifier = "cell"
        let model: [EggSize] = [.large, .extraLarge, .jumbo]
        dataProvider.model = model
        tableView.dataSource = dataProvider
        self.navigationController?.navigationBar.barTintColor = .orange
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TypeViewController
        let cell = sender as! EggTableViewCell
        destinationVC.navigationItem.title = cell.eggLabel.text
    }
}
