//
//  Product.swift
//  codeSwag
//
//  Created by Stephan Ng on 5/8/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation


// Always use a struct unless you need to use a class
struct Product {
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
