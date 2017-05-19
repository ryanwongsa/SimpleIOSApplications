//
//  GameState.swift
//  RPS
//
//  Created by Ryan Wong on 2017/01/30.
//  Copyright © 2017 Ryan Wong. All rights reserved.
//

import Foundation

enum GameState{
    case start, win, lose, draw
    
    var status: String {
        switch self {
            case .start:
                return "Rock, Paper, Scissors?"
            case .win:
                return "You Won!"
            case .lose:
                return "You Lost!"
            case .draw:
                return "It's a Draw!"
        }
    }
}
