//
//  ToDoVC.swift
//  todo
//
//  Created by Stephan Ng on 5/30/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class ToDoVC: UIViewController {

    @IBOutlet weak var toDoItemText: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addToDo(_ sender: Any) {
    }
    
}

