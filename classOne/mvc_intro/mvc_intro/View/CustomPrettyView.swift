//
//  CustomPrettyView.swift
//  mvc_intro
//
//  Created by Stephan Ng on 4/1/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class CustomPrettyView: UIView {
    override class func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        layer.shadowRadius = 10
        layer.opacity = 0.75
    }
}
