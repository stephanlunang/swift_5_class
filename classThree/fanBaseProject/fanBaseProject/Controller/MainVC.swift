//
//  ViewController.swift
//  fanBaseProject
//
//  Created by Stephan Ng on 5/13/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var collection = UICollectionView()
    if let layout = collection.collectionViewLayout as? UICollectionViewFlowLayout {
        layout.scrollDirection = .horizontal
    }

}

