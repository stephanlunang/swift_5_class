//
//  AppleProduct.swift
//  mvc_actual
//
//  Created by Stephan Ng on 4/1/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation


class AppleProduct {
    public private(set) var name: String
    public private(set) var color: String
    public private(set) var price: Double
    
    init(name: String, color: String, price: Double) {
        self.name = name
        self.color = color
        self.price = price
    }
}
