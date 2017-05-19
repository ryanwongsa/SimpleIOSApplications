//
//  ViewController.swift
//  AnimalSounds
//
//  Created by Ryan Wong on 2017/01/30.
//  Copyright © 2017 Ryan Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var animalSoundLabel: UILabel!

    @IBAction func catButtonTapped(_ sender: AnyObject) {
        animalSoundLabel.text = "Meow!"
        meowSound.play()
    }
    
    @IBAction func dogButtonTapped(_ sender: AnyObject) {
        animalSoundLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: AnyObject) {
        animalSoundLabel.text = "Moo!"
        mooSound.play()
    }
    
    let meowSound = SimpleSound(named:"meow")
    let woofSound = SimpleSound(named:"woof")
    let mooSound = SimpleSound(named:"moo")
    
}

