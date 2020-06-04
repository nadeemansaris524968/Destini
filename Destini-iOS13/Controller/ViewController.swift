//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Nadeem Ansari on 6/3/20.
//  Copyright © 2020 Nadeem Ansari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        storyLabel.layer.backgroundColor = CGColor(srgbRed: 1.0, green: 1.0, blue: 1.0, alpha: 0.2)
        storyLabel.layer.cornerRadius = 30
        storyLabel.layer.borderColor = UIColor.white.cgColor
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        guard let choice = sender.titleLabel?.text else { return }
        storyBrain.updateCurrentDestination(for: choice)
        updateUI()
    }
    
    func updateUI() {
        let story = storyBrain.getStory()
        storyLabel.text = story.title
        choice1Btn.setTitle(story.choice1, for: .normal)
        choice2Btn.setTitle(story.choice2, for: .normal)
    }
    
}
