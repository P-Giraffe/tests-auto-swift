//
//  demoUITests.swift
//  demoUITests
//
//  Created by Maxime Britto on 10/05/2021.
//

import XCTest

class SendEmailViewUITests: XCTestCase {
    var app:XCUIApplication!
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        app = XCUIApplication()
        app.launch()

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.shared.orientation = .portrait
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testInvalidEmail() throws {
        let emailField = app.textFields["email field"]
        emailField.tap()
        emailField.typeText("will@acncom")
        app.buttons["Envoyer"].tap()
        XCTAssertTrue(app.staticTexts["Email invalide"].exists)
    }
    
    func testValidEmail() throws {
        let emailField = app.textFields["email field"]
        emailField.tap()
        emailField.typeText("mon@email.fr")
        app.buttons["Envoyer"].tap()
        XCTAssertTrue(app.staticTexts["Email envoyé à mon@email.fr"].exists)
    }
    
    func testValidEmailWithSpaces() throws {
        let emailField = app.textFields["email field"]
        emailField.tap()
        emailField.typeText(" mon@email.fr ")
        app.buttons["Envoyer"].tap()
        XCTAssertTrue(app.staticTexts["Email envoyé à mon@email.fr"].exists)
    }
}
