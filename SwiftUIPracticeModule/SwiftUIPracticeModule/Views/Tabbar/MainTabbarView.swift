//
//  MainTabbarView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 12/08/23.
//

import Foundation
import SwiftUI

struct MainTabbarView: View {
    var body: some View {
        TabView {
            CardsListView(choice: "Cards")
                .tabItem {
                    Label("Cards", systemImage: "list.dash")
                }

            ProfileView(feedType: .feedsInGridFormat)
                .tabItem {
                    Label("Profile", systemImage: "square.and.pencil")
                }
        }
        .navigationBarHidden(true)
    }
}
