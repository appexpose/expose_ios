//
//  ModelContact.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class ModelContact{
    
    var name = ""
    var phoneNumber = ""
    var commentsAmount = 0
    var lastContent = ""
    var rating = 0
    var avatar: UIImage?
    
    convenience init(aName:String, aPhoneNumber: String, avatarData: NSData?){
        self.init()
        name = aName
        phoneNumber = aPhoneNumber
        if let dataImage = avatarData{
            avatar = UIImage(data: dataImage)
        }
    }
}