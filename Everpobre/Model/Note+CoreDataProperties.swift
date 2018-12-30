//
//  Note+CoreDataProperties.swift
//  Everpobre
//
//  Created by Javier Finez de Dios on 30/12/18.
//  Copyright © 2018 Javier Finez de Dios. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var title: String?
    @NSManaged public var text: String?
    @NSManaged public var creationDate: NSDate?
    @NSManaged public var lastSeenDate: NSDate?
    @NSManaged public var notebook: Notebook?

}
