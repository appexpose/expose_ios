//
//  ContactsViewController.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class ContactsViewController: BaseViewController {
    
    //MARK: - Variables
    var contactsList = [ModelContact]()

    //MARK: - LifeCycle
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
         NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(self.returnContacts), name:GlobalVariables.returnListContactsNotification() , object: nil)
        ListContacts.listContacts()
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSNotificationCenter.defaultCenter().removeObserver(self, name: GlobalVariables.returnListContactsNotification(), object: nil)
    }
    
    //MARK: - Retrieve contacts
    func returnContacts(){
        contactsList = Contact.returnAllContacts()
        print(contactsList)
    }
}