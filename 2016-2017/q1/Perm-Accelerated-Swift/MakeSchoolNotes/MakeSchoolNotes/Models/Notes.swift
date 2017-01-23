//
//  Notes.swift
//  MakeSchoolNotes
//
//  Created by Alex Aaron Peña on 10/13/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class Note: NSManagedObject {
    @NSManaged var title: String
    @NSManaged var content: String
    @NSManaged var modificationTime: Date?
    
    convenience init() {
        let appDelegate =   UIApplication.shared.delegate as! AppDelegate
        let persistentContainer = appDelegate.persistentContainer
        let managedContext = persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Note", in: managedContext)
        self.init(entity: entity!, insertInto: managedContext)
    }
}
