//
//  File.swift
//  Reference
//
//  Created by Allen gu on 14/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import Foundation

struct Cat: Identifiable{
    var id:Int
    var img:String
    var name:String
    var breed:String
    var color:String
    var size: String
}
let Data = [
    
    Cat(id: 002, img:"cat1", name:"litte A", breed:"Devon Rex", color:"black", size:"Small"),
    Cat(id: 003, img:"cat2", name:"john", breed:"Sphynx", color:"white", size:"Small"),
    Cat(id: 001, img:"cat", name:"Lily", breed:"English short hair", color:"Tabby", size:"Large")
]
