//
//  PostsFeed.swift
//  API Call
//
//  Created by George Paul on 12/04/2024.
//


import SwiftUI
import Foundation

struct PostsFeed: View {
    
    @ObservedObject var posts = Posts()
    
    var body: some View {
        
        VStack {
            List(posts.postsData, id: \.id) {post in
                Section {
                    Text(post.title).font(.headline)
                    
                    Text(post.body).font(.subheadline)
                }
            }
        }
        .onAppear {
            posts.getPosts {fetchedPost in
                posts.postsData = fetchedPost
            }
            print("Fetching")
        }
        .navigationTitle("Posts")
    }
}
