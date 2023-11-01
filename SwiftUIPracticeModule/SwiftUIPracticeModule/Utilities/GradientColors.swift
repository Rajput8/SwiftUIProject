//
//  GradientColors.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 16/09/23.
//

import Foundation
import SwiftUI

struct GradientColors {
    static var colors: Gradient {
        let grColors = Gradient(colors:  [Color(red: 0.369, green: 0.553, blue: 0.839),
                                          Color(red: 0.302, green: 0.213, blue: 0.8),
                                          Color(red: 0.765, green: 0.263, blue: 0.537),
                                          Color(red: 0.859, green: 0.345, blue: 0.353)])
        return grColors
    }
}
