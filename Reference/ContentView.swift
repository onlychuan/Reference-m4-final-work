//
//  ContentView.swift
//  Reference
//  this file view for cat detail
//
//  Created by Dongchuan gu on 7/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var cat: Cat
    @State var dataurl:String = ""
     

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                Text("Note:")
                    .font(.headline)
                TextField("Entre note",text:$cat.note)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            VStack{
                URLimage(url:cat.img)
            .frame(width:UIScreen.main.bounds.width,height: UIScreen.main.bounds.height/3)
            TextField("name",text:$cat.name)
                .font(.largeTitle)}
            
            .textFieldStyle(RoundedBorderTextFieldStyle())
                
            HStack {
                Text("Breed:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                TextField("Entre breed",text:$cat.breed)
                 .font(.largeTitle)
                
                .textFieldStyle(RoundedBorderTextFieldStyle())
                 
            }
            HStack {
                Text("Color:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                TextField("Entre color",text:$cat.color)
                 .font(.largeTitle)
                .padding(.horizontal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            HStack {
                Text("Size:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal, 11.0)
                TextField("Entre size",text:$cat.size)
                 .font(.largeTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            
            if cat.img == "https://www.cowgirlcontractcleaning.com/wp-content/uploads/sites/360/2018/05/placeholder-img.jpg" {
            VStack(alignment: .leading){
                
                Text("ImageUrl:")
                    .font(.headline)
            
                TextField("ENTRE URL",text:$dataurl, onCommit: {
                    self.cat.img = "\(self.dataurl)"
                    print(URLimage.imagURL)
                    
                })
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            }
           
        }

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
                   ContentView( cat: Datacat[0])
        
    }
}

//
struct URLimage: View {
    let url: String

    static var imagURL = ""
    @ObservedObject private var imageDownloader = ImageDowanloader()
    init(url:String){
        self.url = url
        self.imageDownloader.downloadImage(url: self.url)
    }
    var body: some View {
        if let imageData = self.imageDownloader.downloadData {
            let img = UIImage(data:imageData)
            return VStack {
                Image(uiImage: img!).resizable()
            }
        } else {
            return VStack {
                Image("palcaeholder").resizable()
            }
        }
    }
}

struct URLimage_Previews: PreviewProvider {
    static var previews: some View {
        URLimage(url:URLimage.imagURL)
    }
}
