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
    var cat: Cat
    @ObservedObject var model: Cat

    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading){
                Text("Note:")
                    .font(.headline)
                TextField("",text:$model.note)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
            }
            Image(cat.img)
            Text(cat.name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            HStack {
                Text("Breed:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                Text(cat.breed)
                 .font(.largeTitle)
            }
            HStack {
                Text("Color:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                Text(cat.color)
                 .font(.largeTitle)
            }
            HStack {
                Text("Size:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal, 11.0)
                Text(cat.size)
                 .font(.largeTitle)
                

                
            }
           
        }

        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView( cat: Data[0], model:Data[0])
    }
}
