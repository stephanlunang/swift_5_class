//
//  Category.swift
//  codeSwag
//
//  Created by Stephan Ng on 5/7/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation

struct Category {
    
    // These variables are private for setting and public for getting
    // Which means that they are more secure from external interference
    private(set) public var title: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        self.title = title
        self.imageName = imageName
    }
    
    
}
