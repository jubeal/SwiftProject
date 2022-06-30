//
//  Swifty_CompanionApp.swift
//  Swifty Companion
//
//  Created by Jules Beal on 27/08/2021.
//

import SwiftUI

@main
struct Swifty_CompanionApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
