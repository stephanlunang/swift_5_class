//
//  selectorBtn.swift
//  Converter
//
//  Created by Stephan Ng on 4/29/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

@IBDesignable

class selectorBtn: UIButton {


    override func prepareForInterfaceBuilder() {
        selectorButton()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectorButton()
    }
    
    func selectorButton() {
        layer.borderWidth = 1.0
        layer.borderColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
    }
    
}
