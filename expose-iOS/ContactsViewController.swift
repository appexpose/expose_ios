//
//  ContactsViewController.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import UIKit

class ContactsViewController: BaseViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        ListContacts.listContacts()
    }
}
