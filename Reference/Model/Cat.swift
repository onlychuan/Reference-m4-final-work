//
//  Cat.swift
//  Reference
//model for cat and the data
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import Foundation
import SwiftUI

//defind for cat breed, model base class
class Cat: ObservableObject, Identifiable{
     @Published var id = UUID()
    @Published var img = URLimage.imagURL
     @Published var name:String
     @Published var breed:String
     @Published var color:String
     @Published var size: String
     @Published var note:String
    init(img:String,name:String,breed:String,color:String,size:String,note:String) {
        self.img = img
        self.name = name
        self.breed = breed
        self.color = color
        self.size = size
        self.note = note
    }
}

//cat data detail
let Datacat = [
    Cat(img:"https://cdn1-www.cattime.com/assets/uploads/gallery/bombay-cats-and-kittens_1/devon-rex-cats-and-kittens-1.jpg", name:"litte A", breed:"Devon Rex", color:"Black", size:"Small",note:""),
    Cat(img:"https://cf.ltkcdn.net/cats/images/orig/247865-1600x1030-sphynx-cat-rescue-shelters.jpg", name:"John", breed:"Sphynx", color:"White", size:"Small",note:""),
    Cat(img:"https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png", name:"Lily", breed:"English short hair", color:"Tabby", size:"Large",note:""),
]





