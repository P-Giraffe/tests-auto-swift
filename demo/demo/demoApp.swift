//
//  demoApp.swift
//  demo
//
//  Created by Maxime Britto on 29/04/2021.
//

import SwiftUI

@main
struct demoApp: App {
    var body: some Scene {
        WindowGroup {
            if let viewName = ProcessInfo.processInfo.environment["view"] {
                switch viewName {
                case "SendEmailView":
                    SendEmailView()
                default:
                    PrepareEmailView()
                }
            } else {
                PrepareEmailView()
            }
        }
    }
}
