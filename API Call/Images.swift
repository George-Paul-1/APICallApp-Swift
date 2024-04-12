//
//  Images.swift
//  API Call
//
//  Created by George Paul on 12/04/2024.
//

import Foundation
import UIKit
class Images: ObservableObject {
    
    @ Published var fetchedImages = [Image]()
    
    func fetchImages() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error  in
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let images = try JSONDecoder().decode([Image].self, from: data)
                DispatchQueue.main.async {
                    self.fetchedImages = images
                }
            } catch {
                print("Error fetching images \(error)")
            }
        }.resume()
    }
}
