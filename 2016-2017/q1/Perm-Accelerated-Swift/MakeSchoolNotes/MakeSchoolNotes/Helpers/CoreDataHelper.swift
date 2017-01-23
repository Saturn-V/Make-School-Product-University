//
//  CoreDataHelper.swift
//  MakeSchoolNotes
//
//  Created by Alex Aaron Peña on 10/14/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import Foundation
import CoreData
import UIKit

class CoreDataHelper {
    
    static let managedContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    static func saveNote(note: Note) {
        do {
            try managedContext.save()
        } catch let error as NSError {
            print("Could not save \(error)")
        }
    }
    
    static func deleteNote(note: Note) {
        managedContext.delete(note)
        saveNote(note: note)
    }
    
    static func retrieveNotes() -> [Note] {
        let fetchRequest = NSFetchRequest<Note>(entityName: "Note")
        
        do {
            let results = try managedContext.fetch(fetchRequest)
            return results
            
        } catch let error as NSError {
            print("Could not fetch \(error)")
        }
        return []
    }
}
