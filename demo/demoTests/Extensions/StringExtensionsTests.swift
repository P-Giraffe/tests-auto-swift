//
//  StringExtensionsTests.swift
//  demoTests
//
//  Created by Maxime Britto on 11/05/2021.
//

import XCTest
@testable import demo

class StringExtensionsTests: XCTestCase {



    func testEmailValidity() throws {
        XCTAssertEqual(true, "willmcavoy@acn.com".isValidEmail)
        XCTAssertEqual(true, "will.mcavoy@ac-n.com".isValidEmail)
        XCTAssertEqual(true, "will-mcavoy@acn.com".isValidEmail)
        XCTAssertEqual(true, "willmc+avoy@acn.com".isValidEmail)
        XCTAssertEqual(false, "@acn.com".isValidEmail)
        XCTAssertEqual(false, "will-acn.com".isValidEmail)
        XCTAssertEqual(false, "will@acncom".isValidEmail)
        XCTAssertEqual(false, "w ill@acncom".isValidEmail)
        XCTAssertEqual(false, "".isValidEmail)
    }

}
