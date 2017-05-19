//
//  ViewController.swift
//  ElementQuiz
//
//  Created by Ryan Wong on 2017/01/29.
//  Copyright © 2017 Ryan Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    var currentElementIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateElement()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!

    @IBAction func gotoNextElement(_ sender: AnyObject) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    
    @IBAction func showAnswer(_ sender: AnyObject) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
    
}
