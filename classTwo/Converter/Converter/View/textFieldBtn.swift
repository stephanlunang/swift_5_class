//
//  textFieldBtn.swift
//  Converter
//
//  Created by Stephan Ng on 4/28/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

@IBDesignable

class textFieldBtn: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customTextField()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customTextField()
    }

    
    func customTextField(){
        layer.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5787301937)
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 5.0
        layer.cornerRadius = 5.0
    }
}
