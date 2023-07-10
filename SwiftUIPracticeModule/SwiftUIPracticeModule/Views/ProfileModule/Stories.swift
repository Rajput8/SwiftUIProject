//
//  Stories.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct Stories: View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Array(repeating: GridItem(.fixed(50)), count: 1), alignment: .center) {
                ForEach(0..<4) { index in
                    if index == 3 {
                        AddStoryView()
                    } else {
                        StoryView()
                    }
                }
                .padding(.leading)
                .padding(.vertical, 10)
            }
        }
    }
}

struct StoryView: View {
    var body: some View {
        VStack {
            Image("myCard")
                .resizable()
                .frame(width: 54, height: 54)
                .background(Color("458EFF"))
                .clipShape(Circle())
                .padding(2)
                .background(Color(.white))
                .clipShape(Circle())
                .padding(2)
                .background(Circle().stroke(Color.gray))

            Text("iOS")
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
        }
    }
}

struct AddStoryView: View {
    var body: some View {
        VStack {
            Image(systemName: "plus")
                .font(.title2)
                .foregroundColor(.primary)
                .padding(18)
                .background(Circle().stroke(Color.gray))

            Text("New")
                .foregroundColor(.primary)
        }
    }
}
