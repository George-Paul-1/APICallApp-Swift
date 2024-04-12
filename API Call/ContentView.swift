//
//  ContentView.swift
//  API Call
//
//  Created by George Paul on 11/04/2024.
//

import SwiftUI
import Foundation

struct ContentView: View {

    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: PostsFeed()) {
                    Text("Posts Feed")
                }
                NavigationLink(destination: ImagesFeed()) {
                    Text("Images Feed")
                }
            }
        }
    }
}


    
struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

