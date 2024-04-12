//
//  ImagesFeed.swift
//  API Call
//
//  Created by George Paul on 12/04/2024.
//

import SwiftUI
import Foundation

struct ImagesFeed: View {
    
    @ObservedObject var images = Images()
    
    var body: some View {
        
        VStack {
            List(images.fetchedImages, id: \.id) {image in
                Section {
                    Text(image.title).font(.headline)
                }
                
                AsyncImage(url: URL(string: image.url)) { image in
                    image.resizable()
                        .frame(width: 300, height: 300, alignment:.center)
                        .padding()
                    
                } placeholder: {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle())
                        .padding()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .onAppear {
            images.fetchImages()
            print("Fetching")
        }
    }
}
