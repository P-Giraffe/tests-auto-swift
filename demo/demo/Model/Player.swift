//
//  Player.swift
//  demo
//
//  Created by Maxime Britto on 11/05/2021.
//

import Foundation

struct Player {
    let name:String
    var score = 0
    
    mutating func gameWon() {
        score += 30
    }
}
