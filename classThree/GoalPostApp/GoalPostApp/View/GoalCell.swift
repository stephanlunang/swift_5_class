//
//  GoalCell.swift
//  GoalPostApp
//
//  Created by Stephan Ng on 5/26/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDiscLabel: UILabel!
    @IBOutlet weak var goalTypeLabel: UILabel!
    @IBOutlet weak var goalProgress: UILabel!
    @IBOutlet weak var completionView: UIView!
    

    func configureCell(goal: Goal) {
        self.goalDiscLabel.text = goal.goalDescription
        self.goalTypeLabel.text = goal.goalType
        self.goalProgress.text = String(describing: goal.goalProgress)
        
        // Shows goal complete banner when complete!
        if goal.goalProgress == goal.goalCompletionValue {
            self.completionView.isHidden = false
        } else {
            self.completionView.isHidden = true
        }
    }
}
