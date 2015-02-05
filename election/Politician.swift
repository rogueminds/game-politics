//
//  Politician.swift
//  election
//
//  Created by Alex Raventos on 2/4/15.
//  Copyright (c) 2015 Rogue Minds. All rights reserved.
//

import Foundation

/*
 * Represents a Politician
 */
class Politician: Person {

    /*
     * The Politicians current level of office
     */
    var office: Office
    
    /*
     * The Politician's morality as an Integer (e.g., -100 will be evil, while 100 will be good)
     */
    var morality: Int
    
    override init() {
        office = Office.Candidate
        morality = 0
        
        super.init()
    }
    
    
}
