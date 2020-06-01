//
//  NetworkService.swift
//  todo
//
//  Created by Stephan Ng on 5/30/20.
//  Copyright © 2020 Stephan Ng. All rights reserved.
//

import Foundation

// Can be built in the model as well, but it depends on the company

// Reusable code that decluters the getTodos
typealias OnAPISuccess = (Todos) -> Void
typealias OnAPIError = (String) -> Void


class NetworkService {
    
    // Creates a singlton, which is better for memory, a single instance of this service
    static let shared = NetworkService()
    
    // Having the name URL in the front helps since if all URLs have URL in front, it makes it more searchable.
    // Generally only HTTPS is allowed, but if you change info.plist settings, you can add "App Transport Security Settings" and under it "Allow Arbirary Loads" to "YES", which will allow all sites
    let URL_BASE = "http://localhost:3003"
    let URL_ADD_TODO = "/add"
    
    // Allows for the addition of headers and other useful things to pass in
    let session = URLSession(configuration: .default)
    
    // Alamofire is an alternative to the built in URL Session
    // A "Closure", The escaping allows for asynchronous, which allows for it to live past the running of the function
    // The onerror message allows for the removal of an error message, which will be reported to the user
    func getTodos(onSuccess: @escaping OnAPISuccess, onError: @escaping OnAPIError) {
        // Since the URL is not dynamic, we can force unwrap
        let url = URL(string: "\(URL_BASE)")!
        
        // Can use .download for getting images and other larger objects
        // Is spun up on a background thread, but data remains on background thread when done
        // If it was on the main thread, everything else would freeze up, so it's necessary
        let task = session.dataTask(with: url) { (data, response, error) in
            // Generalized Error Handling
            
            // Allows you to run things asychonously in the background
            // Simple multithreading
            DispatchQueue.main.async {
                if let error = error {
                    onError(error.localizedDescription)
                    return
                }
                
                // Makes sure that we get data, and that the data is not garbage
                guard let data = data, let response = response as? HTTPURLResponse else {
                    onError("Invalid data or response")
                    return
                }
                
                do {
                    if response.statusCode == 200 {
                        // Parse successful todos
                        let items = try JSONDecoder().decode(Todos.self, from: data)
                        // After successful retreival, it stores it within items
                        onSuccess(items)
                    } else {
                        // Show error to user
                        let err = try JSONDecoder().decode(APIError.self, from: data)
                        onError(err.message)
                    }
                } catch {
                    onError(error.localizedDescription)
                }
            }

        }
        task.resume()
    }
    
    func addTodo(todo: Todo, onSuccess: @escaping OnAPISuccess, onError: @escaping OnAPIError) {
        let url = URL(string: "\(URL_BASE)\(URL_ADD_TODO)")!
        var request = URLRequest(url: url)
        request.httpMethod = "POST" // GET, POST, PUT DELETE
        
        do {
            
            // Encodes todos into a json, then adds it to the request http body
            let body = try JSONEncoder().encode(todo)
            request.httpBody = body
            
            // This is not required for a GET request since it is the default methodology
            // This is a header for the API POST Request that tells the server that the data is json
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            
            let task = session.dataTask(with: request) { (data, response, error) in
                
                // This puts the data back onto the main thread when completed
                DispatchQueue.main.async {
                      if let error = error {
                          onError(error.localizedDescription)
                          return
                      }
                      guard let data = data, let response = response as? HTTPURLResponse else {
                          // error
                          onError("Failed to get data from server")
                          return
                      }
                    
                      do {
                          if response.statusCode == 200 {
                              // On success
                              let items = try JSONDecoder().decode(Todos.self, from: data)
                              onSuccess(items)
                          } else {
                              let err = try JSONDecoder().decode(APIError.self, from: data)
                              onError(err.message)
                          }
                      } catch {
                          // On error
                          onError(error.localizedDescription)
                      }
                }
            }
            task.resume()
        } catch {
            onError(error.localizedDescription)
        }
    }
}
