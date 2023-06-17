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

    var body: some View {
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
}

struct Previews_CardsListView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView(choice: "Hello")
    }
}
