//
//  AnalyticsService.swift
//  Analytics
//
//  Created by Glauco Moraes on 24/11/20.
//

import Foundation
import UIKit

protocol AnalyticsService {
    
    // MARK: - Initialization
    func initialize(application: UIApplication,
                    launchOptions: [UIApplication.LaunchOptionsKey: Any]?)
    
    
    // MARK: - TRACKING
    
    func track(event: Event)

    var trackingEvents: [Event] { get }
}


// MARK: - Default behavior
extension AnalyticsService {
    var trackingEvents: [Event] {
        return Event.all
    }
}

// MARK: - Convenience methods
extension AnalyticsService {
    func shouldTrack(event: Event) -> Bool {
        return trackingEvents.contains(event)
    }
}
