//
//  AnalyticsManager.swift
//  Analytics
//
//  Created by Glauco Moraes on 24/11/20.
//

import Foundation
import UIKit

final class AnalyticsManager: AnalyticsService {
    
    // MARK: - Properties
    
    internal private(set) var services = [AnalyticsService]()
    
    // MARK: - Singleton
    static let instance = AnalyticsManager()
    private init() {}
    
    // MARK: - Methods
    
    func add(service: AnalyticsService) {
        self.services.append(service)
    }
 
    // MARK: - AnalyticsService
    func initialize(application: UIApplication,
                    launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        for service in services {
            service.initialize(
                application     : application,
                launchOptions   : launchOptions
            )
        }
    }
    
    func track(event: Event) {
        for service in services where service.shouldTrack(event: event) {
            service.track(event: event)
        }
    }
}
