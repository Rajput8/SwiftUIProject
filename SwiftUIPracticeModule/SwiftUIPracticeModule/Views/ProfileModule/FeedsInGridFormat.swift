//
//  FeedsInGridFormat.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct FeedsInGridFormat: View {

    let data = (1...50).map { "Item \($0)" }

    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 3), count: 3), spacing: 3) {
                ForEach(data, id: \.self) { item in
                    FeedMediaView()
                }
                .frame(height: 100)
            }
            .padding(.horizontal, 5)
        }
    }
}
