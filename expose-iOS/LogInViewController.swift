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
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.goTabBar), name:GlobalVariables.returnAddContactsNotification() , object: nil)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        SignUp.signUpUser(prefixCountry)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: GlobalVariables.returnAddContactsNotification(), object: nil)
    }
    
    //MARK: - Utils
    func goTabBar(){
        performSegueWithIdentifier("showTabsLogin", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let tabBar = segue.destinationViewController as? UITabBarController
        tabBar?.selectedIndex = 1
    }
 }