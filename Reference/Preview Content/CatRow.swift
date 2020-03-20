//
//  SwiftUIView.swift
//  Reference
//
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI

struct CatRowView: View {
    var cat: Cat
    var body: some View {
        HStack {
            Image(cat.img)
                .resizable()
                .frame(width: 50, height:50)
            Text(cat.name)
            Spacer()
        }
        }
    }

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CatRowView(cat: Data[2])
            CatRowView(cat: Data[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}

