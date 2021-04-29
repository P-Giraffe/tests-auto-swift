//
//  Joueur.swift
//  demo
//
//  Created by Maxime Britto on 29/04/2021.
//

import Foundation
class Joueur {
    var points = 0
    func partieGagnée() {
        points += 30
    }
    
    func partiePerdue() {
        points -= min(points, 30)
    }
}
