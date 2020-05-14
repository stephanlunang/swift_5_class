//
//  convertBtn.swift
//  Converter
//
//  Created by Stephan Ng on 4/29/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

@IBDesignable

class convertBtn: UIButton {
    
    override func prepareForInterfaceBuilder() {
        convertButton()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        convertButton()
    }
    
    
    func convertButton(){
        layer.cornerRadius = 5.0
        layer.borderColor = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 1)
        layer.borderWidth = 1.0
    }
}


1. view controller, Corecontrol, uiview
2. Unit tests
3. IBOutlet
4. views on storyboard, addsubview, nib?
5. IBdesignable
6. cornerradiu
7\ input\ \a\c\c\e\s\sory
8 no c
