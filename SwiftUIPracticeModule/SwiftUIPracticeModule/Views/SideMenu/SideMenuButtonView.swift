//
//  SideMenuButtonView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 21/08/23.
//

import Foundation
import SwiftUI

struct SideMenuButtonView: View {
    @Binding var presentSideMenu: Bool
    var body: some View {
        HStack {
            Button {
                presentSideMenu.toggle()
            } label: {
                Image(systemName: "line.3.horizontal.circle")
                    .resizable()
                    .frame(width: 20, height: 20)
            }

            Text("rajput_shiv8")
                .font(.system(size: 25, weight: .bold))
            Spacer()
        }
        .padding([.horizontal, .top])
        .padding(.bottom, 15)
    }
}
