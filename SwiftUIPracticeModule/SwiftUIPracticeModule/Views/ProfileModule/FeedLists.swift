//
//  FeedLists.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct FeedLists: View {

    @Binding var offset: CGFloat
    var cellColor: Color
    var cellsCount: Int

    var body: some View {
        //        ScrollView(.vertical, showsIndicators: false) {
        //            VStack {
        //                ForEach(0 ..< cellsCount, id: \.self) { index in
        //                    Text("Cell")
        //                        .font(.headline)
        //                        .foregroundColor(.white)
        //                        .frame(width: UIScreen.main.bounds.width, height: 50, alignment: .center)
        //                        .background(cellColor)
        //                } //: ForEach
        //            } //: VStack
        //            .padding(.top, 300)
        //            .background(GeometryReader {
        //                Color.clear.preference(
        //                    key: ViewOffsetKey.self,
        //                    value: -$0.frame(in: .named("scroll")).origin.y)
        //            })
        //            .onPreferenceChange(ViewOffsetKey.self) { offset = $0 }
        //        }
        //        .coordinateSpace(name: "scroll")



        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(),spacing: 3), count: 3), spacing: 3) {
                ForEach(0 ..< cellsCount, id: \.self) { item in
                    FeedMediaView()
                }
                .frame(height: 100)
            }
            .padding(.horizontal, 5)
            .background(GeometryReader {
                Color.clear.preference(
                    key: ViewOffsetKey.self,
                    value: -$0.frame(in: .named("scroll")).origin.y)
            })
            .onPreferenceChange(ViewOffsetKey.self) { offset = $0 }
        }
        .coordinateSpace(name: "scroll")
    }
}

// MARK: - ViewOffsetKey
struct ViewOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}
