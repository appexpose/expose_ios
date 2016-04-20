//
//  GlobalVariables.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation

var coreDataStack = MMGCoreDataStack2(modelName: "Model")

class GlobalVariables{
    
    static func returnUrlREST() -> String{
        return "http://expose-server-rest.azurewebsites.net"
    }
    
    static func returnDeviceKey()-> String{
        return "7777777"
    }
    
    static func returnSystem() -> String{
        return "ios"
    }
    
    static func returnVersion() -> String{
        return "1.0"
    }
    
    static func returnAddContactsNotification() -> String{
        return "com.appexpose.notificationAddContacts"
    }
    
    static func returnLonginNotification() -> String{
        return "com.appexpose.notificationLogIn"
    }
    
    static func returnListContactsNotification() -> String{
        return "com.appexpose.notificationListContacts"
    }
}
