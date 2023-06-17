//
//  Extensions.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 17/06/23.
//

import Foundation
import SwiftUI

extension View {
    func printOnConsole(_ vars: Any...) -> some View {
        for v in vars { print(v) }
        return EmptyView()
    }
}
