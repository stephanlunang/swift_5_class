//
//  CustomPrettyView.swift
//  mvc_actual
//
//  Created by Stephan Ng on 4/1/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class CustomPrettyView: UIView {
    override func awakeFromNib() {
        layer.cornerRadius = 20
        layer.shadowColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.75
        
        backgroundColor = #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1)
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 5
        
    }
}

