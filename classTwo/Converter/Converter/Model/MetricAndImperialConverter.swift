//
//  MetricAndImperialConverter.swift
//  Converter
//
//  Created by Stephan Ng on 4/28/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation

class ImperialMetricConverter {
    
    class func KilometerToMiles(enterKilometers kilometers: Double) -> Double {
        // One mile is equal to 1.609344 kilometers
        return kilometers / 1.609344
    }
    
    class func MilesToKilometer(enterMiles miles: Double) -> Double {
        return miles * 1.609344
    }
    
    class func KilogramsToPounds(enterKilograms kilograms: Double) -> Double {
        return kilograms / 2.2046226218
    }
    
    class func PoundstoKilograms(enterPounds  pounds: Double) -> Double {
        return pounds / 2.2046226218
    }
}
