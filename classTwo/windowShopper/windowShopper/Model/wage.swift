//
//  wage.swift
//  windowShopper
//
//  Created by Stephan Ng on 4/28/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
