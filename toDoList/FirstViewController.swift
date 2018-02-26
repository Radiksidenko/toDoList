//
//  FirstViewController.swift
//  toDoList
//
//  Created by Radomyr Sidenko on 22.02.2018.
//  Copyright © 2018 Radomyr Sidenko. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    let animals: [String] = ["Horse", "Cow", "Camel", "Sheep", "Goat"]
    let cellReuseIdentifier = "cell"
    @IBOutlet var showTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.showTable.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        showTable.delegate = self
        showTable.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    override func viewWillAppear(_ animated: Bool) {
        showTable.reloadData();
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "test")
        cell.textLabel?.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel?.text = taskMgr.tasks[indexPath.row].desc
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You tapped cell number \(indexPath.row).")
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        taskMgr.tasks.remove(at: indexPath.row)
        showTable.reloadData();
    }

}

