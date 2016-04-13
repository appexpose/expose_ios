//
//  ModelContact.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation

class ModelContact{
    
    var firstName = ""
    var lastName = ""
    var phoneNumber = 0
    
    convenience init(aFirstName: String, aLastName: String, aPhoneNumber: Int){
        self.init()
        firstName = aFirstName
        lastName = aLastName
        phoneNumber = aPhoneNumber
    }
}