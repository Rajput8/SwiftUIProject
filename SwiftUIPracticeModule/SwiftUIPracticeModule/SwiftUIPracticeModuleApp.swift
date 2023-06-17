//
//  SwiftUIPracticeModuleApp.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 04/06/23.
//

import SwiftUI

@main
struct SwiftUIPracticeModuleApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            // ContentView().environment(\.managedObjectContext, persistenceController.container.viewContext)
            WelcomeView()
        }
    }
}
