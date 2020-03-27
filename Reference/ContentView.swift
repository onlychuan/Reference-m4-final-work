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
     

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                Text("Note:")
                    .font(.headline)
                TextField("",text:$cat.note)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            Image(cat.img)
            TextField("name",text:$cat.name)
                
            HStack {
                Text("Breed:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                TextField("",text:$cat.breed)
                 
            }
            HStack {
                Text("Color:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                TextField("",text:$cat.color)
                 .font(.largeTitle)
            }
            HStack {
                Text("Size:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal, 11.0)
                TextField("",text:$cat.size)
                 .font(.largeTitle)
                

                
            }
           
        }

        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( cat: Data[0])
    }
}
