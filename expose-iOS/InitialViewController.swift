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

        let contactsArray = ContactsUtils.importContactsFromPhone()
        UpdateContacts.updateContacts(contactsArray)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
