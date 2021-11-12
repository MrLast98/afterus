//
//  afterusApp.swift
//  Shared
//
//  Created by Emanuele Giunta on 12/11/21.
//

import SwiftUI

@main
struct afterusApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
