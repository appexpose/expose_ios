//
//  ModelContact.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class ModelContact{
    
    var id = -1
    var fullName = ""
    var phoneNumber = ""
    var commentsAmount = 0
    var rating = 0
    var avatar: UIImage?
    var notify = false
    var userKey = ""
    
    convenience init(model:Contact){
        self.init()
        if let aFullName = model.fullName{
            fullName = aFullName
        }
        if let aPhoneNumber = model.phone{
            phoneNumber = aPhoneNumber
        }
        if let dataImage = model.avatar{
            avatar = UIImage(data: dataImage)
        }
        if let anId = model.id?.integerValue{
            id = anId
        }
        if let aComment = model.commetnsAmount?.integerValue{
            commentsAmount = aComment
        }
        if let aRating = model.rating?.integerValue{
            rating = aRating
        }
        if let aNotify = model.notify as? Bool{
            notify = aNotify
        }
        if let anUserKey = model.userKey{
            userKey = anUserKey
        }
    }
}