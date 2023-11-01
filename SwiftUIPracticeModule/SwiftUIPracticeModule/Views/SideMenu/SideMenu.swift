//
//  SideMenu.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 21/08/23.
//

import Foundation
import SwiftUI

struct SideMenu: View {

    @Binding var isShowing: Bool

    var content: AnyView
    var edgeTransition: AnyTransition = .move(edge: .leading)
    var body: some View {
        ZStack(alignment: .topLeading) {
            if (isShowing) {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture { isShowing.toggle() }
                content
                    .transition(edgeTransition)
                    .background(Color.clear)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .animation(.easeInOut, value: isShowing)
    }
}
