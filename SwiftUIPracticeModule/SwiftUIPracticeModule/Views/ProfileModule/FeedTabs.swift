//
//  FeedTabs.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct FeedTabs: View {

    @Binding var topHeaderOffset: CGFloat
    @Binding var feedType: FeedType
    @Binding var selectedTabIndex: Int

    var body: some View {
        GeometryReader { reader -> AnyView in
            let minY = reader.frame(in: .global).minY
            let offset = minY - topHeaderOffset
            return AnyView (
                VStack(spacing: 0) {
                    TabsView(selectedTabIndex: $selectedTabIndex, feedType: $feedType)
                } //: VStack
                    .offset(y: offset < 0 ? -offset : 0)
            )
        }
        .frame(height: 70)
        .zIndex(1)
    }
}
