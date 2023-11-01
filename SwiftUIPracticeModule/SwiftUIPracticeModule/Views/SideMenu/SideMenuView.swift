//
//  SideMenuView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 19/08/23.
//

import Foundation
import SwiftUI

struct SideMenuView: View {

    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.white, .red, .purple]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.vertical)
            .overlay(
                VStack {
                    SideMenuHeaderView()
                    ForEach(SideMenuOptions.allCases, id: \.self) { data in
                        SideMenuOptionView(data: data)
                    }
                    Spacer()
                }
            )
            .frame(width: UIScreen.main.bounds.width * 0.8)
    }
}
