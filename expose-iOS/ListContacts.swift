//
//  ListContacts.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation

class ListContacts{
    
    static func listContacts(){
        let urlServidor = "http://www.appexpose.com/server/1.0.1/models/model.php"
        let params = "action=list_contacts&device_key=\(GlobalVariables.returnDeviceKey())"
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
                            print(json)
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
    }
}
