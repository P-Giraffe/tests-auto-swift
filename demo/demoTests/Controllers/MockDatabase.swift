//
//  MockDatabase.swift
//  demoTests
//
//  Created by Maxime Britto on 11/05/2021.
//

import Foundation
@testable import demo

class MockDatabase: Database {
    func addPlayer(name: String) -> Player {
        return Player(name: name)
    }
    
    func getPlayer(name: String) -> Player? {
        return Player(name: name)
    }
    
    
}
