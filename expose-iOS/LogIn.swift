//
//  LogIn.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 20/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit
import Alamofire

class LogIn{
    static func logInUser(){
        Alamofire.request(.PUT, GlobalVariables.returnUrlREST() + "/users/\(User.returnUserData()!.userKey)/login").responseJSON { (response) in
            if let json = response.result.value{
                if let code = json.objectForKey("code") as? String{
                    //print(userJSON)
                    //_ = User(userJSON: userJSON)
                    //_ = ContactsUtils.importContactsFromPhone()
                    //UpdateContacts.updateContacts()
                    if(code == "user_logged"){//Login Ok
                        UpdateContacts.updateContacts()
                    }else if let messageError = json.objectForKey("message") as? String{
                        print(code)
                        print(messageError)
                    }
                }
            }
        }
    }
}
