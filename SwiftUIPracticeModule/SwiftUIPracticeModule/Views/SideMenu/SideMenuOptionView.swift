//
//  SideMenuOptionView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 21/08/23.
//

import Foundation
import SwiftUI

struct SideMenuOptionView: View {
    var data: SideMenuOptions?
    var body: some View {
        HStack(spacing: 20) {
            data?.icon
                .resizable()
                .frame(width: 30, height: 30)
            Text(data?.title ?? "")
            Spacer()
        }
        .padding()
    }
}
