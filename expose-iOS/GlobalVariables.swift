//
//  GlobalVariables.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation

class GlobalVariables{
    
    static func returnUrlREST() -> String{
        return "http://expose-server-rest.azurewebsites.net"
    }
    
    static func returnDeviceKey()-> String{
        return "111111"
    }
    
    static func returnSystem() -> String{
        return "ios"
    }
    
    static func returnVersion() -> String{
        return "1.0"
    }
    
    static func returnUpdateContactsNotification() -> String{
        return "com.appexpose.notificationListUserRooms"
    }
}
