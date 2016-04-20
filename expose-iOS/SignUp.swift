//
//  SignUp.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 20/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit
import Alamofire

class SignUp{
    
    static func signUpUser(prefixCountry: String){
        let params = ["deviceKey" : GlobalVariables.returnDeviceKey(), "prefix" : prefixCountry, "system" : GlobalVariables.returnSystem(), "version": GlobalVariables.returnVersion() ]
        Alamofire.request(.POST, GlobalVariables.returnUrlREST() + "/users", parameters: params).responseJSON { (response) in
            if let json = response.result.value{
                if let userJSON = json.objectForKey("user") as? NSDictionary{
                    //print(userJSON)
                    User.deleteUser()
                    _ = User(userJSON: userJSON)
                    _ = ContactsUtils.importContactsFromPhone()
                    //UpdateContacts.updateContacts()
                    LogIn.logInUser()
                }else if let codError = json.objectForKey("code") as? String, messageError = json.objectForKey("message") as? String{
                    print(codError)
                    print(messageError)
                }
            }
        }
    }
}