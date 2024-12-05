//
//  macOSCalculatorApp.swift
//  macOSCalculator
//
//  Created by Angelos Staboulis on 4/12/24.
//

import SwiftUI

@main
struct macOSCalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(txtReadout: "").frame(width: 520, height: 290)
                .windowResizeBehavior(.disabled)
        }.windowResizability(.contentSize)
    }
}
