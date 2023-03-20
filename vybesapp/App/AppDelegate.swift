//
//  AppDelegate.swift
//  vybesapp
//
//  Created by administrator on 2023-03-15.
//

import FBSDKCoreKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        //for facebook
        ApplicationDelegate.shared.application(
                    application,
                    didFinishLaunchingWithOptions: launchOptions
                )
             
        return true
    }
    
}
