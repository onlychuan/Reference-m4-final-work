//
//  SwiftUIView.swift
//  Reference
//
//  Created by Allen gu on 20/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
  
    var body: some View {
        TextField("good", text: $username)
    }
}

struct wiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
