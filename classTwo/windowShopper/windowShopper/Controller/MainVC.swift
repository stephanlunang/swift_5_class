//
//  MainVC.swift
//  windowShopper
//
//  Created by Stephan Ng on 4/20/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var hrLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let calculateBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        
        calculateBtn.backgroundColor = #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)
        calculateBtn.setTitle("Calculate", for: .normal)
        calculateBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        
        calculateBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calculateBtn
        priceTxt.inputAccessoryView = calculateBtn
        
        hoursLbl.isHidden = true
        hrLbl.isHidden = true
    }


    @objc func calculate () {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                hoursLbl.isHidden = false
                hrLbl.isHidden = false
                hoursLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    @IBAction func clearCalculator(_ sender: Any) {
        hoursLbl.isHidden = true
        hrLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

