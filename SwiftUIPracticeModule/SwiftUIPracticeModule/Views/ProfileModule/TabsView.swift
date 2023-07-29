//
//  TabsView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct TabsView: View {
    @Binding var selectedTabIndex: Int
    @Binding var feedType: FeedType
    private let tabWidth: CGFloat = screenWidth / CGFloat(FeedType.allCases.count)

    var body: some View {
        HStack(spacing: 0) {
            ForEach(FeedType.allCases, id: \.self) { data in
                Button {
                    selectedTabIndex = data.typeValue
                } label: {
                    VStack(spacing: 12) {( data.typeIcon )
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 28, height: 28)
                        .foregroundColor(data.typeValue == selectedTabIndex ? .primary : .gray)
                    }
                } //: Button
                .frame(width: tabWidth)
            } //: ForEach
        } //: HStack
        .frame(width: screenWidth, height: tabsHeight)
        .overlay(Rectangle().fill(Color.black).frame(width: tabWidth,
                                                     height: 2).cornerRadius(1.5).offset(x: CGFloat(selectedTabIndex) * tabWidth),
                 alignment: .bottomLeading)
        .animation(.spring(), value: selectedTabIndex)
    }
}

struct Previews_TabsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(feedType: .feedsInGridFormat)
    }
}
