//
//  LogInViewController.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 17/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit
import Alamofire

class LogInViewController: BaseViewController {
    
    //MARK: - Variables
    var prefixCountry = ""

    //MARK: - LifeCycle
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = Colors.returnGreenExpose()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        signUpUser()
    }
 
    //MARK: - SignUp User
    func signUpUser(){
        let params = ["deviceKey" : GlobalVariables.returnDeviceKey(), "prefix" : prefixCountry, "system" : GlobalVariables.returnSystem(), "version": GlobalVariables.returnVersion() ]
        Alamofire.request(.POST, GlobalVariables.returnUrlREST() + "/users", parameters: params).responseJSON { (response) in
            if let json = response.result.value{
                if let userJSON = json.objectForKey("user") as? NSDictionary{
                    //print(userJSON)
                    _=User(userJSON: userJSON)
                }else if let codError = json.objectForKey("code") as? String, messageError = json.objectForKey("message") as? String{
                    print(codError)
                    print(messageError)
                }
            }
        }
    }
}