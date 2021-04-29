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

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
