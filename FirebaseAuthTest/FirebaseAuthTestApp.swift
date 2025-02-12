//
//  FirebaseAuthTestApp.swift
//  FirebaseAuthTest
//
//  Created by Pei Chi Cheng on 2025/2/12.
//

import SwiftUI

@main
struct FirebaseAuthTestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
