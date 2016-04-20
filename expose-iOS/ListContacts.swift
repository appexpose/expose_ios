//
//  ListContacts.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation
import Alamofire

class ListContacts{
    
    static func listContacts(){
        Alamofire.request(.GET, GlobalVariables.returnUrlREST() + "/users/\(User.returnUserData()!.userKey)/contacts").responseJSON { (response) in
            if let json = response.result.value{
                if let contactArrayJSON = json.objectForKey("contacts") as? [NSDictionary]{
                    for contact in contactArrayJSON{
                        if let phone = contact.objectForKey("phone") as? String{
                            Contact.updateContact(phone, aDict: contact)
                        }
                    }
                    NSNotificationCenter.defaultCenter().postNotificationName(GlobalVariables.returnListContactsNotification(), object: nil)
                    //print(userJSON)
                    //_ = User(userJSON: userJSON)
                    //_ = ContactsUtils.importContactsFromPhone()
                    //UpdateContacts.updateContacts()
                    
                }
            }
        }
    }
}
