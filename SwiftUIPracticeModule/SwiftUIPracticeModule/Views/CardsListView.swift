//
//  CardsListView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 17/06/23.
//

import Foundation
import SwiftUI

struct CardsListView: View {
    var choice: String
    static var categoriesData = [Category]()

    @State var presentSideMenu = false
    @State var selectedSideMenuOption = 0

    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                SideMenuButtonView(presentSideMenu: $presentSideMenu)
                Divider()
                List {
                    ForEach(Category.preparedListData()) { section in
                        Section(section.name) {
                            ForEach(section.products) { productData in
                                ProductDetailView(productDetail: productData)}
                            //.background()
                        }
                    }
                    //.listRowBackground(Color.clear)
                    //.listRowSeparator(.hidden)
                }
            }

            SideMenu(isShowing: $presentSideMenu, content: AnyView(SideMenuView()))
        }
    }
}

struct Previews_CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView(choice: "Hello")
    }
}
