//
//  JoueurTests.swift
//  demoTests
//
//  Created by Maxime Britto on 29/04/2021.
//

import XCTest
@testable import demo

class JoueurTests: XCTestCase {

    func testPartieGagnee() throws {
        let j1 = Joueur()
        XCTAssertEqual(j1.points, 0)
        j1.partieGagnée()
        XCTAssertEqual(j1.points, 30)
    }
    
    func testPartiePerdue() throws {
        let j1 = Joueur()
        j1.points = 50
        j1.partiePerdue()
        XCTAssertEqual(j1.points, 20)
        j1.partiePerdue()
        XCTAssertEqual(j1.points, 0)
        j1.partiePerdue()
        XCTAssertEqual(j1.points, 0)
    }

    func testPerformancePartiePerdue() throws {
        // This is an example of a performance test case.
        measure {
//            for _ in 0...100_000 {
//                let j = Joueur()
//                j.points = 10
//                j.partiePerdue()
//            }
        }
    }

}
