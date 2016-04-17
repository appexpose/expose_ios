import CoreData

@objc(User)
public class User: _User {

	//Convenience init
    convenience init(userJSON:NSDictionary){
        self.init(managedObjectContext:coreDataStack.context)
        if let aDeviceKey = userJSON.objectForKey("deviceKey") as? String{
            deviceKey = aDeviceKey
        }
        if let aFullName = userJSON.objectForKey("fullName") as? String{
            fullName = aFullName
        }
        if let aPhone = userJSON.objectForKey("phone") as? String{
            phone = aPhone
        }
        if let aPrefix = userJSON.objectForKey("prefix") as? String{
            prefix = aPrefix
        }
        if let anUserKey = userJSON.objectForKey("userKey") as? String{
            userKey = anUserKey
        }
        coreDataStack.saveContext()
    }
    
    //MARK: - Return user data
    static func returnUserData() -> ModelUser?{
        let request = NSFetchRequest(entityName: User.entityName())
        request.returnsObjectsAsFaults = false
        do{
            let results = try coreDataStack.context.executeFetchRequest(request) as! [User]
            if let user = results.first{
                return ModelUser(model: user)
            }else{
                return nil
            }
        }catch let error as NSError{
            print(error.localizedDescription)
            return nil
        }
    }
}