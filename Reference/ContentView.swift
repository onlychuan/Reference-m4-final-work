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
    @State var note: String = ""
    var cat: Cat
    var body: some View {
        VStack(alignment: .leading) {
            VStack{
                TextField("",text:$note)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }.padding()
          
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
        ContentView(cat: Data[2])
    }
}
