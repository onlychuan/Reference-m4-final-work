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
    var id:Int
    var img:String
    var name:String
    var breed:String
    var color:String
    var size: String
    @Published var note:String
    init(id:Int,img:String,name:String,breed:String,color:String,size:String,note:String) {
        self.id = id
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
    Cat(id: 001, img:"cat1", name:"litte A", breed:"Devon Rex", color:"Black", size:"Small",note:""),
    Cat(id: 003, img:"cat2", name:"John", breed:"Sphynx", color:"White", size:"Small",note:""),
    Cat(id: 002, img:"cat", name:"Lily", breed:"English short hair", color:"Tabby", size:"Large",note:""),
]
