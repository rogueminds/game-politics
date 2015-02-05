//
//  CharacterCreationViewController.swift
//  election
//
//  Created by Alex Raventos on 2/4/15.
//  Copyright (c) 2015 Rogue Minds. All rights reserved.
//

import UIKit

class CharacterCreationViewController: UIViewController {
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    @IBAction func savePressed(sender: AnyObject) {
        var politician = Politician()
        politician.firstName = firstName.text
        politician.lastName = lastName.text
        
        println("We have a new candidate named  \(politician.firstName) \(politician.lastName)")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}


