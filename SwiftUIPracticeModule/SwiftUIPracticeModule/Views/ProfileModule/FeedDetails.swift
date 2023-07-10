//
//  FeedDetails.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct FeedDetails: View {

    @Binding var selectedTabIndex: Int
    @Binding var offset: CGFloat
    let colors: [Color] = [.red, .green, .orange, .brown]
    
    var body: some View {
        ZStack(alignment: .top) {
            TabView(selection: $selectedTabIndex) {
                ForEach(colors.indices, id: \.self) { index in
                    FeedLists(offset: $offset,
                              cellColor: colors[index],
                              cellsCount: index == 0 ? 25 : index == 1 ? 5 : index == 2 ? 3 : 1)
                    .tag(index)
                } //: ForEach
            } //: TabView
            .tabViewStyle(.page(indexDisplayMode: .never))
        } //: ZStack
        .frame(width: screenWidth, height: screenHeight)
        .edgesIgnoringSafeArea(.top)
        .animation(.spring(), value: selectedTabIndex)
    }
}

struct FeedMediaView: View {
    var body: some View {
        VStack {
            Image("feed")
                .resizable()
                .cornerRadius(5)
        }
    }
}
