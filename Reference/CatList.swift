//
//  CatList.swift
//  Reference
//
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI

struct CatList: View {
    var body: some View {
        List(Data) { cat in
            CatRowView(cat: cat)
        }
    }
}

struct CatList_Previews: PreviewProvider {
    static var previews: some View {
        CatList()
    }
}
