//
//  Cat.swift
//  Reference
//model for cat and the data
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import Foundation

//defind for cat breed, model base class
class Cat: ObservableObject, Identifiable{
     @Published var id = UUID()
     @Published var img:String
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
let Data = [
    Cat(img:"cat1", name:"litte A", breed:"Devon Rex", color:"Black", size:"Small",note:""),
    Cat(img:"cat2", name:"John", breed:"Sphynx", color:"White", size:"Small",note:""),
    Cat(img:"cat", name:"Lily", breed:"English short hair", color:"Tabby", size:"Large",note:""),
]


