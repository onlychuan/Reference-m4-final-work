//
//  test.swift
//  Reference
//
//  Created by Allen gu on 9/3/20.
//  Copyright © 2020 Dongchuan gu. All rights reserved.
//

import Foundation

class Student {
    private let firstName:String
    private let lastName:String
    
    var friends: [Student]=[]
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    func addFriend(friend:Student) {
        friends.append(friend)
    }
    func vailFirtName() -> Bool {
        return firstName.count>3
    }
    
    func vaillastName() -> Bool {
           return lastName.count>3
       }
}
