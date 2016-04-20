import CoreData

@objc(Contact)
public class Contact: _Contact {

	//Convenience init
    convenience init(aFullName: String, phoneNumber: String, avatarData: NSData?){
        self.init(managedObjectContext:coreDataStack.context)
        fullName = aFullName
        phone = phoneNumber
        avatar = avatarData
        coreDataStack.saveContext()
    }

    //Return contacts
    static func returnAllContacts() -> [ModelContact]{
        var contactList = [ModelContact]()
        let request = NSFetchRequest(entityName: Contact.entityName())
        let fullNameDescriptor = NSSortDescriptor(key: "fullName", ascending: true)
        request.sortDescriptors = [fullNameDescriptor]
        request.returnsObjectsAsFaults = false
        do{
            let results = try coreDataStack.context.executeFetchRequest(request) as! [Contact]
            for item in results{
                let contact = ModelContact(model: item)
                contactList.append(contact)
            }
            return contactList
        }catch let error as NSError{
            print(error.localizedDescription)
            return contactList
        }
    }
    
    //DeleteAllContacts
    static func deleteAllContacts(){
        let request = NSFetchRequest(entityName: Contact.entityName())
        request.returnsObjectsAsFaults = false
        let allContacts = try! coreDataStack.context.executeFetchRequest(request)
        
        if allContacts.count > 0 {
            
            for result: AnyObject in allContacts{
                coreDataStack.context.deleteObject(result as! Contact)
            }
        }
        
        coreDataStack.saveContext()
    }
    
    //Update contact
    static func updateContact(phone: String, aDict: NSDictionary){
        let request = NSFetchRequest(entityName: Contact.entityName())
        request.predicate = NSPredicate(format: "phone = %@", phone)
        request.returnsObjectsAsFaults = false
        do{
            let results = try coreDataStack.context.executeFetchRequest(request) as! [Contact]
            for item in results{
                if let anId = aDict.objectForKey("ID") as? Int{
                    item.setValue(anId, forKey: "id")
                }
                if let anUserKey = aDict.objectForKey("userKey") as? String{
                    item.setValue(anUserKey, forKey: "userKey")
                }
                if let aNotify = aDict.objectForKey("notify") as? Int{
                    if(aNotify == 0){
                       item.setValue(false, forKey: "notify")
                    }else{
                        item.setValue(true, forKey: "notify")
                    }
                }
                if let aRating = aDict.objectForKey("rating") as? Int{
                    item.setValue(aRating, forKey: "rating")
                }
                if let aCommentsAmount = aDict.objectForKey("commentsAmount") as? Int{
                    item.setValue(aCommentsAmount, forKey: "commetnsAmount")
                }
            }
            coreDataStack.saveContext()
        }catch let error as NSError{
            print(error.localizedDescription)
        }
    }
}