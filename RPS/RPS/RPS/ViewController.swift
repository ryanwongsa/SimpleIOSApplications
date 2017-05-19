//
//  ViewController.swift
//  RPS
//
//  Created by Ryan Wong on 2017/01/30.
//  Copyright © 2017 Ryan Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI(.start)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    @IBOutlet weak var appSign: UILabel!

    @IBOutlet weak var statusGame: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    
    @IBAction func rockChoice(_ sender: AnyObject) {
        play(.rock)
    }
    
    @IBAction func paperChoice(_ sender: AnyObject) {
        play(.paper)
    }
    
    @IBAction func scissorsChoice(_ sender: AnyObject) {
        play(.scissors)
    }
    
    func play(_ playerSign : Sign){
        let opponentSign = randomSign()
        let gameState = playerSign.gameState(otherSign: opponentSign)
        
        updateUI(gameState)
        appSign.text = opponentSign.emoji
        
        rock.isEnabled = false
        rock.isHidden = true
        
        paper.isEnabled = false
        paper.isHidden = true
        
        scissors.isEnabled = false
        scissors.isHidden = true
        
        switch playerSign{
        case .paper:
            paper.isHidden = false
        case .rock:
            rock.isHidden = false
        case .scissors:
            scissors.isHidden = false
        }
        
        playAgain.isHidden = false
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        updateUI(.start)
    }
    
    func updateUI(_ gameState: GameState){
        statusGame.text = gameState.status
        switch gameState {
            case .start:
                appSign.text = "🤖"
            
                rock.isEnabled = true
                rock.isHidden = false
            
                paper.isEnabled = true
                paper.isHidden = false
            
                scissors.isEnabled = true
                scissors.isHidden = false
            
                playAgain.isHidden = true
                view.backgroundColor = Palette.darkGrey
            case .win:
                view.backgroundColor = Palette.green
            case .lose:
                view.backgroundColor = Palette.brick
            case .draw:
                view.backgroundColor = Palette.lightGrey
        }
    }
    
    
}

