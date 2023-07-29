//
//  ProfileView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 24/06/23.
//

import Foundation
import SwiftUI

let screenWidth: CGFloat = UIScreen.main.bounds.width
let screenHeight: CGFloat = UIScreen.main.bounds.height
let toolbarHeight: CGFloat = 60
let profileHeight: CGFloat = 701
let tabsHeight: CGFloat = 50

struct ProfileView: View {

    @State var feedType: FeedType
    @State var topHeaderOffset: CGFloat = 0
    @State private var selectedTabIndex: Int = .zero
    @State private var offset: CGFloat = .zero

    var body: some View {
        VStack {
            ProfileHeader()
            GeometryReader { geoReader in
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        Divider()
                        ProfileDetails()
                        EditShareAddUsersButtons(geoReader: geoReader)
                        DiscoverPeople()
                        Stories()
                        FeedTabs(topHeaderOffset: $topHeaderOffset,
                                 feedType: $feedType,
                                 selectedTabIndex: $selectedTabIndex, offset: $offset)
                        FeedDetails(selectedTabIndex: $selectedTabIndex, offset: $offset)
                        //FeedsInGridFormat()
                    }
                }
            }
        }
    }
}

struct Previews_ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(feedType: .feedsInGridFormat)
    }
}
