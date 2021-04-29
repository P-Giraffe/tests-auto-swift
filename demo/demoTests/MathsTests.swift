//
//  MathsTests.swift
//  demoTests
//
//  Created by Maxime Britto on 29/04/2021.
//

import XCTest
@testable import demo

class MathsTests: XCTestCase {

    func testCalculPuissance() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(calculPuissance(nombre: 4, exposant: 2), 16)
        XCTAssertEqual(calculPuissance(nombre: 3, exposant: 4), 81)
        XCTAssertEqual(calculPuissance(nombre: 3, exposant: 0), 1, "Une puissance de 0 fait toujours 1")
        XCTAssertEqual(calculPuissance(nombre: 3, exposant: -1), 0.3333, accuracy: 0.0001)
    }

}
