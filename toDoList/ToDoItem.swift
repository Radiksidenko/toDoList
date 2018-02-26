//
//  ToDoItem.swift
//  toDoList
//
//  Created by Radomyr Sidenko on 26.02.2018.
//  Copyright © 2018 Radomyr Sidenko. All rights reserved.
//

import UIKit

var taskMgr: ToDoItem = ToDoItem()

struct task {
    var name = "Name"
    var desc = "Description"
}
class ToDoItem: NSObject {
    var tasks = [task]()
    
    func addTask(name: String, desc: String){
        tasks.append(task(name: name, desc: desc))
    }
}
