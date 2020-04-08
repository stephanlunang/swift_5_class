//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Stephan Ng on 4/6/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        layer.borderWidth = 2.5
    }
}
