//
//  UpdateContacts.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation
import Alamofire

class UpdateContacts{

    /*static func updateContacts(contactsArray:[ModelContact]){
        let urlServidor = "http://www.appexpose.com/server/1.0.1/models/model.php"
        var numbersString = ""
        for contact in contactsArray{
            numbersString += contact.name + "::" + "\(contact.phoneNumber)" + ","
        }
        
        let params = "action=update_contacts&device_key=\(GlobalVariables.returnDeviceKey())&numbers=\(numbersString)&system=\(GlobalVariables.returnSystem())"
        let request = NSMutableURLRequest(URL: NSURL(string: urlServidor)!)
        let session = NSURLSession.sharedSession()
        request.HTTPMethod = "POST"
        request.HTTPBody = params.dataUsingEncoding(NSUTF8StringEncoding)
        let updateContactTaks = session.dataTaskWithRequest(request) { (data, response, error) -> Void in
            guard data != nil else {
                print("no data found: \(error)")
                return
            }
            
            do {
                if let json = try NSJSONSerialization.JSONObjectWithData(data!, options: [NSJSONReadingOptions.MutableContainers]) as? NSDictionary {
                    if let resultCode = json.objectForKey("result") as? Int{
                        if(resultCode == 1){
                             NSNotificationCenter.defaultCenter().postNotificationName(GlobalVariables.returnUpdateContactsNotification(), object: nil)
                        }else{
                            if let erroCode = json.objectForKey("error_code") as? String{
                                print(erroCode)
                            }
                        }
                    }
                }
            }catch let error as NSError{
                print(error.localizedDescription)
            }
        }
        updateContactTaks.resume()
    }*/
    static func updateContacts(){
        let contactsArray = Contact.returnAllContacts()
        var cont = 0
        for contact in contactsArray{
            let params = ["phone": contact.phoneNumber, "fullName": contact.fullName]
            Alamofire.request(.POST, GlobalVariables.returnUrlREST() + "/users/\(User.returnUserData()!.userKey)/contacts", parameters: params).responseJSON { (response) in
                if let json = response.result.value{
                    if let _ = json.objectForKey("contact") as? NSDictionary{
                        //Todo ok
                        if(cont == contactsArray.count - 1){
                            NSNotificationCenter.defaultCenter().postNotificationName(GlobalVariables.returnAddContactsNotification(), object: nil)
                        }else{
                            cont += 1
                        }
                    }else if let codError = json.objectForKey("code") as? String, messageError = json.objectForKey("message") as? String{
                        print(codError)
                        print(messageError)
                    }
                }
            }
        }
    }
}
