//
//  UserData.swift
//  Reference
//
//  Created by Allen gu on 20/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import SwiftUI
import Combine
final class UserData: ObservableObject {
    @Published var shownote = ""
    @Published var cats = Data
}
