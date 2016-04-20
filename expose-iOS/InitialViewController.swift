//
//  InitialViewController.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit
import Contacts

class InitialViewController: BaseViewController {
    
    //MARK: - Variables
    
    //MARK: - LifeCicle    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        //let contactsArray = ContactsUtils.importContactsFromPhone()
        //UpdateContacts.updateContacts(contactsArray)
        
        performSegueWithIdentifier("selectCountrySegue", sender: self)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    //MARK: - Go TabBar
    func goTabBar(){
        performSegueWithIdentifier("showTabVC", sender: self)
    }
}