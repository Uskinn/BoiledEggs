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
    
    let model: [EggSize] = [.large, .extraLarge, .jumbo]
    let dataProvider: TableViewDataProvider = TableViewDataProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataProvider.cellIdentifier = "cell"
        dataProvider.model = model
        tableView.dataSource = dataProvider
        
        // self.navigationController?.navigationBar.clipsToBounds = true
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.23, green:0.39, blue:0.05, alpha:1.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! TypeViewController
        let cell = sender as! EggTableViewCell
        destinationVC.navigationItem.title = cell.eggLabel.text
        destinationVC.eggSize = cell.eggLabel.text!
    }
}
