//
//  ToDoVC.swift
//  todo
//
//  Created by Stephan Ng on 5/30/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class ToDoVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var toDoItemText: UITextField!
    @IBOutlet weak var prioritySegment: UISegmentedControl!
    @IBOutlet weak var todoTable: UITableView!
    
    // Initialize, because the code expects data, zero is better than nothing
    var todos = Array<Todo>()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // For table view
        todoTable.delegate = self
        todoTable.dataSource = self
        
        getToDos()
        
    }

    func getToDos() {
        // Gets back list of todos, once network request is completed
        NetworkService.shared.getTodos(onSuccess: { (todos) in
            // Replace data with fetched data
            self.todos = todos.items
            self.todoTable.reloadData()
        }) { (errorMessage) in
            // Show alert to user
            debugPrint(errorMessage)
        }
    }
    @IBAction func addToDo(_ sender: Any) {
        
        guard let todoItem = toDoItemText.text else {
            // Return error message if empty
            return
        }
        
        let todo = Todo(item: todoItem, priority: prioritySegment.selectedSegmentIndex)
        
        NetworkService.shared.addTodo(todo:todo, onSuccess: { (todos) in
            self.toDoItemText.text = ""
            self.todos = todos.items
            self.todoTable.reloadData()
        }) { (errorMessage) in
            debugPrint(errorMessage)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Iterates through the returned list of cells, reusing a cell if dequed
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoCell") as? ToDoCell {
            cell.updateCell(todo: todos[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return all of the cells
        return todos.count
    }
}

