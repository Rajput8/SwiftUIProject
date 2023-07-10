//
//  Enums.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

enum ButtonActionEvent {
    case editProfile
    case shareProfile
    case addUsers
}

enum FeedType: CaseIterable {
    case feedsInGridFormat
    case reelsInSingleScrollView
    case photos
    case videos

    var typeValue: Int {
        switch self {
        case .feedsInGridFormat: return 0
        case .reelsInSingleScrollView: return 1
        case .photos: return 2
        case .videos: return 3
        }
    }

    var typeIcon: Image {
        switch self {
        case .feedsInGridFormat: return Image(systemName: "square.grid.3x3")
        case .reelsInSingleScrollView: return Image("reels")
        case .photos: return Image(systemName: "person.crop.square")
        case .videos: return Image(systemName: "video.bubble.left")
        }
    }
}
