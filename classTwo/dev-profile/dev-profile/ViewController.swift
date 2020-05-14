//
//  ViewController.swift
//  dev-profile
//
//  Created by Stephan Ng on 4/15/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var profileImage: UIImageView!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        profileImage.layer.cornerRadius = 10
    }
}

