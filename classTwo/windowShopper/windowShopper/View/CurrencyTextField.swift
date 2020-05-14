//
//  CurrencyTextField.swift
//  windowShopper
//
//  Created by Stephan Ng on 4/20/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

@IBDesignable

class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: ( frame.size.height / 2 ) - size / 2, width: size, height: size))
        
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8362391591, green: 0.8363801837, blue: 0.8362206221, alpha: 0.6840338908)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customView()
    }
    
    
    func customView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 10.0
        textAlignment = .center
        
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(
                string: p, attributes: [NSAttributedString.Key.foregroundColor:  UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    
}
