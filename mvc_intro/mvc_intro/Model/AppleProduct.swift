//
//  AppleProduct.swift
//  mvc_intro
//
//  Created by Stephan Ng on 4/1/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation

class AppleProduct {
    var name: String
    var color: String
    var price: Double
    
    init(name: String, color: String, price: Double) {
        self.name = name
        self.color = color
        self.price = price
    }
}
