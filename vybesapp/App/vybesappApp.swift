//
//  vybesappApp.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import SwiftUI

@main
struct vybesappApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    
    var body: some Scene {
        WindowGroup {
            RootView()
               .environmentObject(ViewRouter.shared)
          
        }
    }
}
