//
//  demoUITests.swift
//  demoUITests
//
//  Created by Maxime Britto on 10/05/2021.
//

import XCTest

class demoUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInvalidEmail() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let emailField = app.textFields["email field"]
        emailField.tap()
        emailField.typeText("mon-email.fr")
        app.buttons["Envoyer"].tap()
        XCTAssertTrue(app.staticTexts["Email invalide"].exists)
    }
    
    func testValidEmail() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let emailField = app.textFields["email field"]
        emailField.tap()
        emailField.typeText("mon@email.fr")
        app.buttons["Envoyer"].tap()
        XCTAssertTrue(app.staticTexts["Email envoyé à mon@email.fr"].exists)
    }

//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
