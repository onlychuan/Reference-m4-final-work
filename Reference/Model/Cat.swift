//
//  Cat.swift
//  Reference
//model for cat and the data
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import Foundation

//defind for cat breed, model base class
struct Cat: Identifiable{
    var id:Int
    var img:String
    var name:String
    var breed:String
    var color:String
    var size: String
}

//cat data detail
let Data = [
    Cat(id: 002, img:"cat1", name:"litte A", breed:"Devon Rex", color:"Black", size:"Small"),
    Cat(id: 003, img:"cat2", name:"John", breed:"Sphynx", color:"White", size:"Small"),
    Cat(id: 001, img:"cat", name:"Lily", breed:"English short hair", color:"Tabby", size:"Large"),
]
