//
//  ModelContact.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation

class ModelContact{
    
    var name = ""
    var phoneNumber = 0
    var commentsAmount = 0
    var lastContent = ""
    var rating = 0
    
    convenience init(aName:String, aPhoneNumber: Int){
        self.init()
        name = aName
        phoneNumber = aPhoneNumber
    }
}