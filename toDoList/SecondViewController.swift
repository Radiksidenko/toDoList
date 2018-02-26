//
//  SecondViewController.swift
//  toDoList
//
//  Created by Radomyr Sidenko on 22.02.2018.
//  Copyright © 2018 Radomyr Sidenko. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var titleTask: UITextField!
    @IBOutlet weak var whoTask: UITextField!
    
    @IBOutlet weak var testT: UITextField!
    
    @IBAction func addTask(_ sender: Any) {
        if (titleTask.text == ""){
            //Task Title is blank, do not add a record
        } else {
            //add record
            taskMgr.addTask(name: titleTask.text!, desc: whoTask.text!)
            
            //dismiss keyboard and reset fields
            
            self.view.endEditing(true)
            titleTask.text = nil
            whoTask.text = nil
            
        }
        testT.text = String(taskMgr.tasks.count)
        self.tabBarController?.selectedIndex = 0;
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

