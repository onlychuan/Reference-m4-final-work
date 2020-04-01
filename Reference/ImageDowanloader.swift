//
//  ImageDowanloader.swift
//  Reference
//
//  Created by Allen gu on 31/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//


import Foundation

class ImageDowanloader: ObservableObject{
   @Published var downloadData: Data? = nil
    
    func downloadImage(url: String){
        guard let imageURL = URL(string: url) else {
            fatalError("URL error")
        }
        DispatchQueue.global().async {
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.downloadData = data
            }
        }
    }
    
}

