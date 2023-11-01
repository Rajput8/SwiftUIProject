//
//  SideMenuEnums.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 19/08/23.
//

import Foundation
import SwiftUI

enum SideMenuOptions: Int, CaseIterable {
    case home = 0
    case favorite
    case chat
    case profile
    
    var title: String {
        switch self {
        case .home: return "Home"
        case .favorite: return "Favorite"
        case .chat: return "Chat"
        case .profile: return "Profile"
        }
    }
    
    var icon: Image {
        switch self {
        case .home: return Image(systemName: "house.fill")
        case .favorite: return Image(systemName: "heart.fill")
        case .chat: return Image(systemName: "ellipsis.message")
        case .profile: return Image(systemName: "person.crop.circle.fill")
        }
    }
}
