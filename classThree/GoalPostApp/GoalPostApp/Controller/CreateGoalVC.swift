//
//  CreateGoalVC.swift
//  GoalPostApp
//
//  Created by Stephan Ng on 5/26/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    
    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermGoalBtn: UIButton!
    @IBOutlet weak var longTermGoalBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    // Instantiating to be short term from the beginning
    var goalType: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Allows for the button to move with the keyboard
        nextBtn.bindToKeyboard()
        
        // Do any additional setup after loading the view.
        shortTermGoalBtn.setSelectedColor()
        longTermGoalBtn.setDeselectedColor()
        
        //Assigned the text view delegate to itself
        goalTextView.delegate = self
    }
    

    // Used to make sure that when one is selected, the colors reflect that.
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
        goalType = .shortTerm
        shortTermGoalBtn.setSelectedColor()
        longTermGoalBtn.setDeselectedColor()
    }
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
        goalType = .longTerm
        shortTermGoalBtn.setDeselectedColor()
        longTermGoalBtn.setSelectedColor()
    }
    
    
    @IBAction func nextBtnWasPressed(_ sender: Any) {
        
        // Makes sure that the goaltext is not empty or filled with the default
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            
            // Casts next screen, which allows for passing data between screens
            guard let finishGoalVC = storyboard?.instantiateViewController(identifier: "FinishGoalVC") as? FinishGoalVC else { return }
            
            //Passing data into the initialize function of the casted screen
            finishGoalVC.initData(description: goalTextView.text!, type: goalType)
            presentingViewController?.presentSecondaryDetail(finishGoalVC)
        }
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }

    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
