//
//  AppDelegate.swift
//  Analytics
//
//  Created by Glauco Moraes on 24/11/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    // MARK: - Application

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let firebaseAnalyticsService: FirebaseAnalyticsService = FirebaseAnalyticsService()
           
        AnalyticsManager.instance.add(service: firebaseAnalyticsService)
           
        if let launchOptions = launchOptions {
               AnalyticsManager.instance.initialize(application: application,
                                                    launchOptions: launchOptions)
        }
        return true
    }

}
