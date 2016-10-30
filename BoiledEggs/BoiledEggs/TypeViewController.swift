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
    var eggSize: String = ""
    var eggType: String = ""
    
    
    
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
        eggType = cell.typeLabel.text!
        
        let sizeAndType: Bool = true
        
        switch sizeAndType {
        case eggSize == "Large" && eggType == "Soft":
            destinationVC.seconds = 180
        case eggSize == "Large" && eggType == "Medium":
            destinationVC.seconds = 240
        case eggSize == "Large" && eggType == "Hard":
            destinationVC.seconds = 300
        case eggSize == "Extra Large" && eggType == "Soft":
            destinationVC.seconds = 240
        case eggSize == "Extra Large" && eggType == "Medium":
            destinationVC.seconds = 300
        case eggSize == "Extra Large" && eggType == "Hard":
            destinationVC.seconds = 360
        case eggSize == "Jumbo" && eggType == "Soft":
            destinationVC.seconds = 300
        case eggSize == "Jumbo" && eggType == "Medium":
            destinationVC.seconds = 360
        case eggSize == "Jumbo" && eggType == "Hard":
            destinationVC.seconds = 460
        default:
            break
        }
               
        print("egg type: \(eggType)")
        print("egg size: \(eggSize)")
        
    }
}












