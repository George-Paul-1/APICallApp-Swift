//
//  Posts.swift
//  API Call
//
//  Created by George Paul on 11/04/2024.
//

import Foundation
class Posts: ObservableObject {
    
    @ Published var postsData = [Post]()
    
    func getPosts(completion: @escaping ([Post]) -> Void){
        
        //takes a closure named completion as a parameter.
        //The closure takes an array of Post objects as input
        //and returns Void (nothing). The @escaping keyword
        //indicates that the closure can outlive the function
        //it's passed into, meaning it can be stored and called
        //later even after the getPosts function has finished executing.
        
        let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
         let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let posts = try JSONDecoder().decode([Post].self, from: data)
                completion(posts)
                // calls the completion closure with the decoded posts.
            } catch {
                print("Error decoding JSON: \(error)")
            }
        }
        task.resume()
    }
}

// the getPosts method fetches data from a remote API using URLSession,
//decodes the JSON response into an array of Post objects, and passes
//the resulting array to a completion closure for further processing.
