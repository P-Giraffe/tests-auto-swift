//
//  PlayerController.swift
//  demo
//
//  Created by Maxime Britto on 11/05/2021.
//

import Foundation

class PlayerController {
    let db:Database
    init(db:Database = SQLiteDatabase()) {
        self.db = db
    }
    func playerDidWinAGame(name:String) -> Player? {
        var player = db.getPlayer(name: name)
        player?.gameWon()
        return player
    }
}
