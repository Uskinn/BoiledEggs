//
//  TypeViewController.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/15/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class TypeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let boilType = ["Soft", "Medium", "Hard"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
                }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "typeCell", for: indexPath) as! TypeTableViewCell
        
        cell.backgroundColor = .green
        cell.textLabel?.font = UIFont(name: "Papyrus", size: 52)
        cell.textLabel?.text = boilType[indexPath.row]
        return cell
    }
 
}
