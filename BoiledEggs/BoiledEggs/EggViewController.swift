//
//  ViewController.swift
//  BoiledEggs
//
//  Created by Sergey Nevzorov on 10/13/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    let eggNames = ["Large", "Extra Large", "Jumbo"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.barTintColor = .orange
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EggTableViewCell
        
        cell.textLabel?.font = UIFont(name: "Papyrus", size: 52)
        cell.backgroundColor = .yellow
        cell.textLabel?.text = eggNames[indexPath.row]
        
        return cell
        
    }
}

