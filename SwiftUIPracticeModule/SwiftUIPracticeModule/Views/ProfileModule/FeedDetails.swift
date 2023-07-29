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

    var body: some View {
        VStack {
            TabView(selection: $selectedTabIndex) {
                ForEach(FeedType.allCases, id: \.self) { data in
                    /// Diff b/w FeedsInGridFormat and FeedLists is only scrollview, one has and another has not.
                    /// but without using .tag, horizontal scrolling is not working properly
                    /// in above mentioned List i.e. FeedsInGridFormat & FeedLists
                    FeedLists(offset: $offset,
                              cellsCount:
                                data.typeValue == 0 ? 50 :
                                data.typeValue == 1 ? 5 :
                                data.typeValue == 2 ? 3 : 1)
                    .tag(data.typeValue)
                } //: ForEach
            } //: TabView
            .tabViewStyle(.page(indexDisplayMode: .never))
        }//: VStack
        .frame(width: screenWidth, height: ContentHeight.calculateHeight(selectedTabIndex: selectedTabIndex))
        .edgesIgnoringSafeArea(.top)
        .animation(.spring(), value: selectedTabIndex)
    }
}

struct ContentHeight {
    static func calculateHeight(selectedTabIndex: Int) -> CGFloat {
        var height = 0
        switch selectedTabIndex {
        case 0: height = 1750
        case 1: height = 205
        case 2: height = 100
        default: height = 100
        }
        return CGFloat(height)
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

struct Previews_FeedDetails_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(feedType: .feedsInGridFormat)
    }
}
