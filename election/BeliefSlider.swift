//
//  BeliefSlider.swift
//  election
//
//  Created by Alex Raventos on 2/8/15.
//  Copyright (c) 2015 Rogue Minds. All rights reserved.
//

import UIKit

class BeliefSlider: UISlider {
    
    var topic: String
    
    override init(frame: CGRect) {
        topic = ""
        
        super.init(frame: frame)
    }
    
    override init() {
        topic = ""
        
        super.init()
    }
    
    required init(coder aDecoder: NSCoder) {
        topic = ""
        
        super.init(coder: aDecoder)
    }
}
