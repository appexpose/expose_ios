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
    
    static func importContactsFromPhone(){
        
        let store = CNContactStore()
        
        if CNContactStore.authorizationStatusForEntityType(.Contacts) == .NotDetermined {
            store.requestAccessForEntityType(.Contacts, completionHandler: { (authorized: Bool, error: NSError?) -> Void in
                if authorized {
                    self.retrieveContactsWithStore(store)
                }
            })
        } else if CNContactStore.authorizationStatusForEntityType(.Contacts) == .Authorized {
            self.retrieveContactsWithStore(store)
        }
    }
    
    static func retrieveContactsWithStore(store: CNContactStore){
        do {
            Contact.deleteAllContacts()
            try store.enumerateContactsWithFetchRequest(CNContactFetchRequest(keysToFetch: [CNContactGivenNameKey, CNContactFamilyNameKey, CNContactEmailAddressesKey, CNContactPhoneNumbersKey, CNContactImageDataKey])) {
                (contact, cursor) -> Void in
                if(!contact.phoneNumbers.isEmpty){
                    if let phoneCN = contact.phoneNumbers[0].value as? CNPhoneNumber{
                        if let phoneString = phoneCN.valueForKey("digits") as? String{
                            var phone = ""
                            if(phoneString.substringWithRange(phoneString.startIndex ..< phoneString.startIndex.advancedBy(1)) == "+" || phoneString.substringWithRange(phoneString.startIndex ..< phoneString.startIndex.advancedBy(2)) == "00"){
                                    phone = phoneString
                            }else{
                                phone = User.returnUserData()!.prefix + phoneString
                            }
                            _=Contact(aFullName: contact.givenName + " " + contact.familyName, phoneNumber: "\(phone)", avatarData: contact.imageData)
                        }
                    }
                }
            }
        }
        catch{
            print("Handle the error please")
        }
    }
}
