//
//  demoTests.swift
//  demoTests
//
//  Created by Maxime Britto on 29/04/2021.
//

import XCTest
@testable import demo

class demoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(calculPuissance(nombre: 4, exposant: 2), 16)
        XCTAssertEqual(calculPuissance(nombre: 3, exposant: 4), 81)
        XCTAssertEqual(calculPuissance(nombre: 3, exposant: 0), 1)
        XCTAssertEqual(calculPuissance(nombre: 3, exposant: -1), 0.3333, accuracy: 0.0001)
    }
    
    func testJoueur() throws {
        let j1 = Joueur()
        XCTAssertEqual(j1.points, 0)
        j1.partieGagnée()
        XCTAssertEqual(j1.points, 30)
        j1.partiePerdue()
        XCTAssertEqual(j1.points, 0)
        j1.partiePerdue()
        XCTAssertEqual(j1.points, 0)
        j1.points = 10
        j1.partiePerdue()
        XCTAssertEqual(j1.points, 0)
    }

    func testPerformancePartiePerdue() throws {
        // This is an example of a performance test case.
        measure {
            for _ in 0...100_000 {
                let j = Joueur()
                j.points = 10
                j.partiePerdue()
            }
        }
    }

}
