//
//  ViewController.swift
//  mvc_actual
//
//  Created by Stephan Ng on 4/1/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iphoneNameLabel: UILabel!
    @IBOutlet weak var iphoneColorLabel: UILabel!
    @IBOutlet weak var iphonePriceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let appleProduct = AppleProduct(name: "Iphone 11", color: "Black", price: 999.99)
        
        iphoneNameLabel.text = appleProduct.name
        iphoneColorLabel.text = "in \(appleProduct.color)"
        iphonePriceLabel.text = "$ \(appleProduct.price)"
        

        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 200, height: 21)
        label.center.x = self.view.center.x
        label.center.y = self.view.center.y + 300
        label.textAlignment = .center
        label.backgroundColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        label.text = "Sample Added Layer"
        self.view.addSubview(label)
    }
}

