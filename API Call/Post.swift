//
//  Post.swift
//  API Call
//
//  Created by George Paul on 11/04/2024.
//

import Foundation

class Post: Decodable {
    let id: Int
    var title: String
    var body: String
    
    init(id: Int, title: String, body: String) {
        self.id = id
        self.title = title
        self.body = body
    }
}
