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
       // destinationVC.seconds = 200
        
        let qwerty = Eggs(eggSize: .large, boiledType: .soft)
        let asdfg = Eggs(eggSize: .large, boiledType: .medium)
        let qaz = Eggs(eggSize: .large, boiledType: .hard)
        
        var newArr = [qwerty, asdfg, qaz]
        
        
        
        //       Eggs(eggSize: .large, boiledType: .soft)
        //       Eggs(eggSize: .large, boiledType: .medium)
        //       Eggs(eggSize: .large, boiledType: .hard)
        //
        //       Eggs(eggSize: .extraLarge, boiledType: .soft)
        //       Eggs(eggSize: .extraLarge, boiledType: .medium)
        //       Eggs(eggSize: .extraLarge, boiledType: .hard)
        //
        //       Eggs(eggSize: .jumbo, boiledType: .soft)
        //       Eggs(eggSize: .jumbo, boiledType: .medium)
        //       Eggs(eggSize: .jumbo, boiledType: .hard)
    }
}












