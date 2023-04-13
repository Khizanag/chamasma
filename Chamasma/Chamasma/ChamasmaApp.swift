//
//  ChamasmaApp.swift
//  Chamasma
//
//  Created by Giga Khizanishvili on 14.04.23.
//

import SwiftUI

@main
struct ChamasmaApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
