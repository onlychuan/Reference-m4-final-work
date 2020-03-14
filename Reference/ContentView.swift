//
//  ContentView.swift
//  Reference
//
//  Created by Dongchuan gu on 7/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var data = Data
    var body: some View {
        VStack(alignment: .leading) {
            Image(data[2].img)
                
            Text(data[2].name)
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
            
            Text("A LIITEL GIRL")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                
            HStack {
                Text("Breed:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                Text(data[2].breed)
                 .font(.largeTitle)
            }
            HStack {
                Text("Color:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.horizontal, 11.0)
                Text(data[2].color)
                 .font(.largeTitle)
            }
            HStack {
                Text("Size:")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.horizontal, 11.0)
                
                Text(data[2].size)
                 .font(.largeTitle)
                
            }

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
