//
//  ContactsUtils.swift
//  expose-iOS
//
//  Created by Manuel Martinez Gomez on 13/4/16.
//  Copyright © 2016 Citious Team SL. All rights reserved.
//

import Foundation
import Contacts

class ContactsUtils{
    
    static func importContactsFromPhone() -> [ModelContact]{
        //MARK: - Variables
        var contactsArray = [ModelContact]()
        
        let store = CNContactStore()
        
        if CNContactStore.authorizationStatusForEntityType(.Contacts) == .NotDetermined {
            store.requestAccessForEntityType(.Contacts, completionHandler: { (authorized: Bool, error: NSError?) -> Void in
                if authorized {
                    contactsArray =  self.retrieveContactsWithStore(store)
                }
            })
        } else if CNContactStore.authorizationStatusForEntityType(.Contacts) == .Authorized {
            contactsArray = self.retrieveContactsWithStore(store)
        }
        return contactsArray
    }
    
    static func retrieveContactsWithStore(store: CNContactStore) -> [ModelContact] {
        var contactsArray = [ModelContact]()
        do {
            try store.enumerateContactsWithFetchRequest(CNContactFetchRequest(keysToFetch: [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactEmailAddressesKey, CNContactPhoneNumbersKey])) {
                (contact, cursor) -> Void in
                if(!contact.phoneNumbers.isEmpty){
                    if let phoneCN = contact.phoneNumbers[0].value as? CNPhoneNumber{
                        if let phoneSting = phoneCN.valueForKey("digits") as? String{
                            if let phone = Int(phoneSting){
                                contactsArray.append(ModelContact(aFirstName: contact.givenName, aLastName: contact.familyName, aPhoneNumber: phone))
                            }
                        }
                    }
                }
                //if (!contact.emailAddresses.isEmpty){
                //Add to your array
                //}
            }
            return contactsArray
        }
        catch{
            print("Handle the error please")
            return contactsArray
        }
    }
}
