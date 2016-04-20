// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to Contact.swift instead.

import CoreData

public enum ContactAttributes: String {
    case avatar = "avatar"
    case commetnsAmount = "commetnsAmount"
    case fullName = "fullName"
    case id = "id"
    case notify = "notify"
    case phone = "phone"
    case rating = "rating"
    case userKey = "userKey"
}

@objc public
class _Contact: NSManagedObject {

    // MARK: - Class methods

    public class func entityName () -> String {
        return "Contact"
    }

    public class func entity(managedObjectContext: NSManagedObjectContext!) -> NSEntityDescription! {
        return NSEntityDescription.entityForName(self.entityName(), inManagedObjectContext: managedObjectContext);
    }

    // MARK: - Life cycle methods

    public override init(entity: NSEntityDescription, insertIntoManagedObjectContext context: NSManagedObjectContext!) {
        super.init(entity: entity, insertIntoManagedObjectContext: context)
    }

    public convenience init(managedObjectContext: NSManagedObjectContext!) {
        let entity = _Contact.entity(managedObjectContext)
        self.init(entity: entity, insertIntoManagedObjectContext: managedObjectContext)
    }

    // MARK: - Properties

    @NSManaged public
    var avatar: NSData?

    // func validateAvatar(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    @NSManaged public
    var commetnsAmount: NSNumber?

    // func validateCommetnsAmount(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    @NSManaged public
    var fullName: String?

    // func validateFullName(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    @NSManaged public
    var id: NSNumber?

    // func validateId(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    @NSManaged public
    var notify: NSNumber?

    // func validateNotify(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    @NSManaged public
    var phone: String?

    // func validatePhone(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    @NSManaged public
    var rating: NSNumber?

    // func validateRating(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    @NSManaged public
    var userKey: String?

    // func validateUserKey(value: AutoreleasingUnsafeMutablePointer<AnyObject>, error: NSErrorPointer) -> Bool {}

    // MARK: - Relationships

}

