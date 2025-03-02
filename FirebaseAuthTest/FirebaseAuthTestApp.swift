//
//  FirebaseAuthTestApp.swift
//  FirebaseAuthTest
//
//  Created by Pei Chi Cheng on 2025/2/12.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    print ("Firebae configured")
    Auth.auth().useEmulator(withHost:"localhost", port:9099)
    return true
  }
}

@main
struct FirebaseAuthTestApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
