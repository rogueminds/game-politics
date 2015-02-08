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
    
    let min_belief: Float = -10
    let max_belief: Float = 10

    /*
     * The Politicians current level of office
     */
    var office: Office
    
    /*
     * The Politician's morality as an Integer (e.g., -100 will be evil, while 100 will be good)
     */
    var morality: Int
    
    /*
     * The Politician's beliefs
     */
    var beliefs: [String: Int] = [
        "Immigration": 0,
        "Abortion": 0,
        "Health Care": 0,
        "Death Penalty": 0,
        "Environment": 0,
        "Taxes": 0,
        "Education": 0,
        "Gay Marriage": 0,
        "Gun Control": 0,
    ]
    
    override init() {
        office = Office.Candidate
        morality = 0
        
        super.init()
    }
    
    /*
     * Returns the ideology of the candidate, based on an oversimplified determination
     */
    func getIdeology() -> String {
        // The political spectrum of the candidate (negative being liberal, positive conservative, zero independent)
        var spectrum: Int = 0
        
        for (topic, favor) in beliefs {
            
            switch topic {
            case
            "Immigration",
            "Abortion",
            "Health Care",
            "Environment",
            "Taxes",
            "Education",
            "Gay Marriage",
            "Gun Control":
                // Traditionally, liberals are for all of these topics, 
                // so then go left in the spectrum
                spectrum -= favor
            default:
                // Else, conservative
                spectrum += favor
            }
        }
        
        let independentRange = beliefs.count
        
        // If you are close to Zero by a friction of 2, you may be indepedent
        if spectrum < -independentRange {
            return "Liberal"
        }
        else if spectrum < independentRange {
            return "Independent"
        }
        else {
            return "Conservative"
        }
    }
    
}
