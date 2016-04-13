//
//  InitialViewController.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit
import Contacts

class InitialViewController: UIViewController {
    
    //MARK: - Variables
    
    //MARK: - LifeCicle
    override func viewDidLoad() {
        super.viewDidLoad()

        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.goTabBar), name:GlobalVariables.returnUpdateContactsNotification() , object: nil)
        
        let contactsArray = ContactsUtils.importContactsFromPhone()
        UpdateContacts.updateContacts(contactsArray)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: GlobalVariables.returnUpdateContactsNotification(), object: nil)
    }
    
    //MARK: - Go TabBar
    func goTabBar(){
        print("Ir a tabBar")
    }
}
