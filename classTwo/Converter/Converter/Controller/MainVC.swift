//
//  MainVC.swift
//  Converter
//
//  Created by Stephan Ng on 4/28/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var convertInput: UITextField!
    @IBOutlet weak var convertOutput: UITextField!
    
    @IBOutlet weak var weightInput: UITextField!
    @IBOutlet weak var weightOutput: UITextField!
    
    
    var kilometersToMiles = false
    var kilogramsToPounds = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func distanceBtn(_ sender: UIButton) {
        if kilometersToMiles {
            kilometersToMiles = false
            sender.setTitle("Miles to Kilometers", for: .normal)
        } else {
            kilometersToMiles = true
            sender.setTitle("Kilometers to Miles", for: .normal)
        }
    }

    @IBAction func convertBtnPressed(_ sender: Any) {
        view.endEditing(true)
        if kilometersToMiles {
            if let kilometers = Double(convertInput.text!) {
                convertOutput.text = String(format: "%.2f", ImperialMetricConverter.KilometerToMiles(enterKilometers: kilometers))
            }
        } else {
            if let miles = Double(convertInput.text!) {
                convertOutput.text = String(format: "%.2f", ImperialMetricConverter.MilesToKilometer(enterMiles: miles))
            }
        }
    }

    @IBAction func weightBtnPressed(_ sender: UIButton) {
        if kilogramsToPounds {
            kilogramsToPounds = false
            sender.setTitle("Pounds to Kilograms", for: .normal)
        } else {
            kilogramsToPounds = true
            sender.setTitle("Kilograms to Pounds", for: .normal)
        }
    }
    
    @IBAction func weightConvertBtnPressed(_ sender: Any) {
        view.endEditing(true)
        if kilogramsToPounds {
            if let kilograms = Double(weightInput.text!) {
                weightOutput.text = String(format: "%.2f", ImperialMetricConverter.KilogramsToPounds(enterKilograms: kilograms))
            }
        } else {
            if let pounds = Double(weightInput.text!) {
                weightOutput.text = String(format: "%.2f", ImperialMetricConverter.PoundstoKilograms(enterPounds: pounds))
            }
        }
    }
}










