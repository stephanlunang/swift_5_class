//
//  ToDo.swift
//  todo
//
//  Created by Stephan Ng on 5/30/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation

// Can use encodable and decodable, but codable covers both use cases
struct Todo: Codable {
    
    // If you are using codable, the names need to be mapped exactly
    let item: String
    let priority: Int
}


// This is since the items are not coming over as a "To Do, but rather an array of dicts"
struct Todos: Codable {
    let items: Array<Todo>
}
