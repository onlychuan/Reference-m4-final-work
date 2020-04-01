//
//  SwiftUIView.swift
//  Reference
//
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI

struct CatRowView: View {
     @ObservedObject var cat: Cat
    var body: some View {
        HStack {
              URLimage(url:cat.img)
              
               .frame(width: 50, height:50)
            Text(cat.name)
            Spacer()
        }
        }
    }

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CatRowView(cat: Datacat[2])
            CatRowView(cat: Datacat[0])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
    }
}

