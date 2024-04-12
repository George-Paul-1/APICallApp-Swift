//
//  Image.swift
//  API Call
//
//  Created by George Paul on 12/04/2024.
//

import Foundation

class Image: Decodable {
    let id: Int
    var title: String
    var url: String
    var thumbnailUrl: String
    
    init(id: Int, title: String, url: String, thumbnailUrl: String) {
        self.id = id
        self.title = title
        self.url = url
        self.thumbnailUrl = thumbnailUrl
    }
}
