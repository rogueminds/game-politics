//
//  CharacterCreationViewController.swift
//  election
//
//  Created by Alex Raventos on 2/4/15.
//  Copyright (c) 2015 Rogue Minds. All rights reserved.
//

import UIKit

class CharacterCreationViewController: UIViewController {
    
    let politician: Politician = Politician()
    
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    
    @IBOutlet weak var beliefSlidersView: UIView!
    
    @IBOutlet weak var ideologyLabel: UILabel!
    
    override func viewDidLoad() {
        renderBeliefSliders()
        super.viewDidLoad()
    }
    
    @IBAction func savePressed(sender: AnyObject) {
    }
    
    func beliefSliderValueChanged(slider: BeliefSlider) {
        politician.beliefs[slider.topic] = Int(slider.value)
        ideologyLabel.text = politician.getIdeology()
    }
    
    /*
     * Renders the beliefSliders user interface
     */
    func renderBeliefSliders() {
        var beliefSlidersY:CGFloat = 0
        for (topic, favor) in politician.beliefs {
            let beliefLabel = UILabel(frame: CGRectMake(0, 0, 100, 21))
            beliefLabel.font = UIFont(name: beliefLabel.font.fontName, size: 13)
            beliefLabel.text = topic
            beliefLabel.frame.origin.y = beliefSlidersY + 5
            beliefLabel.frame.origin.x = 0
            beliefSlidersView.addSubview(beliefLabel)
            
            let beliefSlider = BeliefSlider()
            beliefSlider.minimumValue = politician.min_belief
            beliefSlider.maximumValue = politician.max_belief
            beliefSlider.value = 0
            beliefSlider.addTarget(self, action: "beliefSliderValueChanged:", forControlEvents: .ValueChanged)
            beliefSlider.topic = topic

            beliefSlider.frame.origin.y = beliefSlidersY
            beliefSlider.frame.origin.x = beliefLabel.frame.width + 5
            beliefSlidersView.addSubview(beliefSlider)
            
            beliefSlidersY += 40
        }
    }
    
}


