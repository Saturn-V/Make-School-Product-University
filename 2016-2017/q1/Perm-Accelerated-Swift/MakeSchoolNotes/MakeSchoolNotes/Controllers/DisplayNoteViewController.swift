//
//  DisplayNoteViewController.swift
//  MakeSchoolNotes
//
//  Created by Chris Orcutt on 1/10/16.
//  Copyright © 2016 MakeSchool. All rights reserved.
//

import UIKit

class DisplayNoteViewController: UIViewController {
    
    var note : Note?
    
    @IBOutlet weak var noteContentTextView: UITextView!
    @IBOutlet weak var noteTitleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // Checking to see if user is saving (UPDATE or SAVE) or canceling
        if segue.identifier == "Save" {
            
            // Note exists, so we are rewriting the data for this note to CoreData
            if let note = note {
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text ?? ""
                note.modificationTime = Date()
                
                CoreDataHelper.saveNote(note: note)
            } else {
                // Note doesn't exist, so lets make one
                let note = Note()
                note.title = noteTitleTextField.text ?? ""
                note.content = noteContentTextView.text ?? ""
                note.modificationTime = Date()
            
                CoreDataHelper.saveNote(note: note)
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let note = note {
            noteTitleTextField.text = note.title
            noteContentTextView.text = note.content
        } else {
            noteTitleTextField.text = ""
            noteContentTextView.text = ""
        }
    }
    
}
