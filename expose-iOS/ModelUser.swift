//
//  ModelUser.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 17/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation

class ModelUser{
    
    var deviceKey = ""
    var fullName = ""
    var phone = ""
    var prefix = ""
    var userKey = ""
    
    //Convenience init
    convenience init(model: User){
        self.init()
        if let aDeviceKey = model.deviceKey{
            deviceKey = aDeviceKey
        }
        if let aFullName = model.fullName{
            fullName = aFullName
        }
        if let aPhone = model.phone{
            phone = aPhone
        }
        if let aPrefix = model.prefix{
            prefix = aPrefix
        }
        if let anUserKey = model.userKey{
            userKey = anUserKey
        }
    }
}
