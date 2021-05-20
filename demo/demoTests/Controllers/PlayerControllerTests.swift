//
//  PlayerControllerTests.swift
//  demoTests
//
//  Created by Maxime Britto on 11/05/2021.
//

import XCTest
@testable import demo

class PlayerControllerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPlayerDidWinAGame() throws {
        let playerController = PlayerController(db: MockDatabase())
        let player = playerController.playerDidWinAGame(name: "Ted Lasso")
        XCTAssertNotNil(player)
        XCTAssertEqual(30, player?.score)
    }

}
