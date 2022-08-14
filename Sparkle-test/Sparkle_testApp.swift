//
//  Sparkle_testApp.swift
//  Sparkle-test
//
//  Created by Matteo Spada on 13/08/22.
//

import SwiftUI

@main
struct Sparkle_testApp: App {
    @StateObject var updaterViewModel = UpdaterViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .commands {
            CommandGroup(after: .appInfo) {
                CheckForUpdatesView(updaterViewModel: updaterViewModel)
            }
        }
    }
}
