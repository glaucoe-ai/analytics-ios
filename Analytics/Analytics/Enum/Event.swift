//
//  Event.swift
//  Analytics
//
//  Created by Glauco Moraes on 24/11/20.
//

import Foundation

enum Event: Int {
    
    case loginWithEmail = 0
    case loginWithFacebook
    case loginWithGoogle
    case registerWithEmail
    case updateProfileInfo
    case updateProfileImage
    
    var name: String {
        switch self {
            
        case .loginWithEmail        : return "Login with email"
        case .loginWithFacebook     : return "Login with Facebook"
        case .loginWithGoogle       : return "Login with Google"
        case .registerWithEmail     : return "Register with email"
        case .updateProfileInfo     : return "Update profile info"
        case .updateProfileImage    : return "Update profile image"
            
        }
    }
}

extension Event {
    static var all: [Event] = {
        var index = 0
        var events = [Event]()
        while let event = Event(rawValue: index) {
            events.append(event)
            index += 1
        }
        return events
    }()
}
