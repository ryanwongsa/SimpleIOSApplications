//
//  Sign.swift
//  RPS
//
//  Created by Ryan Wong on 2017/01/30.
//  Copyright © 2017 Ryan Wong. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
    }
}

enum Sign{
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        case .paper:
            return "🖐"
        case .scissors:
            return "✌️"
        }
    }
    
    func gameState(otherSign: Sign) -> GameState {
        if (self == .rock && otherSign == .paper){
            return .lose
        } else if (self == .rock && otherSign == .scissors){
            return .win
        } else if (self == .rock && otherSign == .rock){
            return .draw
        } else if (self == .paper && otherSign == .paper){
            return .draw
        } else if (self == .paper && otherSign == .scissors){
            return .lose
        } else if (self == .paper && otherSign == .rock){
            return .win
        } else if (self == .scissors && otherSign == .paper){
            return .win
        } else if (self == .scissors && otherSign == .scissors){
            return .draw
        } else if (self == .scissors && otherSign == .rock){
            return .lose
        } else {
            return .start
        }
    }
}
