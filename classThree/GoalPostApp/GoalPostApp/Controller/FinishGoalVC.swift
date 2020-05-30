//
//  FinishGoalVC.swift
//  GoalPostApp
//
//  Created by Stephan Ng on 5/29/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit
import CoreData

// This is a global variable that can be accessed everywhere
let appDelegate = UIApplication.shared.delegate as? AppDelegate

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextField: UITextField!
    
    // Needed to pass data between screens
    var goalDescription: String!
    var goalType: GoalType!
    
    func initData(description: String, type: GoalType){
        self.goalDescription = description
        self.goalType = type
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // createGoalBtn.bindToKeyboard()
        pointsTextField.delegate = self
    }
    
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        // Check that the points field is filled
        if pointsTextField.text != "" {
            // Pass data into core data goal model
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        // This saves the information to persistant storage
        // The "completion" = a completion handler
        
        // Retreiving managed context, if it can't, it won't go forwards.
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        
        // Creates an instance of goal and is told where to store it
        let goal = Goal(context: managedContext)
        
        // Assign values of goal, sets up the model
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextField.text!)!
        goal.goalProgress = Int32(0)
        
        // tries to save, if it does not, it will throw an error
        do {
            try managedContext.save()
            print("Successfully saved data")
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
}
