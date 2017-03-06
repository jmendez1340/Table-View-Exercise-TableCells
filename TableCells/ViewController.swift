//
//  ViewController.swift
//  TableCells
//
//  Created by Jason on 3/5/17.
//  Copyright © 2017 Jason Mendez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    let cellTableIdentifier = "CellTableIdentifier"
    @IBOutlet var tableView:UITableView!
    let computers = [
        ["Name": "MacBook Air", "Color" : "Silver"],
        ["Name": "MacBook Pro", "Color" : "Silver"],
        ["Name": "iMac", "Color" : "Silver"],
        ["Name": "Mac Mini", "Color" : "Silver"],
        ["Name": "Mac Pro", "Color" : "Black"]
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.register(NameAndColorCellTableViewCell.self, forCellReuseIdentifier: cellTableIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Mark: - 
    // Mark: Table View Data Source Methods 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return computers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellTableIdentifier, for: indexPath)
        as! NameAndColorCellTableViewCell
        
        let rowData = computers[indexPath.row]
        cell.name = rowData["Name"]!
        cell.color = rowData["Color"]!
        
        return cell
        
    }
    

}

