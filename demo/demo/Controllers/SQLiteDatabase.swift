//
//  SQLiteDatabase.swift
//  demo
//
//  Created by Maxime Britto on 11/05/2021.
//

import Foundation

protocol Database {
    func addPlayer(name:String) -> Player
    func getPlayer(name:String) -> Player?
}

class SQLiteDatabase : Database {
    func addPlayer(name:String) -> Player {
        let player = Player(name: name)
        // sauvegarde vers base de données sqlite
        return player
    }
    
    func getPlayer(name:String) -> Player? {
        //charger le joueur depuis la base de données
        return nil
    }
}
