//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyBrain = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(choice: 0)
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextChoice(userChoice: sender.currentTitle!)
        updateUI(choice: storyBrain.storyNumber)
    }
    func updateUI(choice: Int) {
        storyLabel.text = storyBrain.setStoryLabel()
        choice1Button.setTitle(storyBrain.setChoice1Button(), for: .normal)
        choice2Button.setTitle(storyBrain.setChoice2Button(), for: .normal)
    }
    
}

