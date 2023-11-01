//
//  SideMenuHeaderView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 21/08/23.
//

import Foundation
import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack {
            Image("myCard")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .stroke(.purple.opacity(0.5), lineWidth: 8)
                )

            VStack {
                Text("Shiv Kumar")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .font(.system(size: 18.0, weight: .medium))
                    .foregroundStyle(LinearGradient(gradient: GradientColors.colors,
                                                    startPoint: UnitPoint(x: 0, y: 0.5),
                                                    endPoint: UnitPoint(x: 1.0, y: 0.5)))

                Text("iOS Developer")
                    .font(.system(size: 12, weight: .semibold))
                    .foregroundColor(.black.opacity(0.5))
            }
            .padding(.top, 5)
        }
    }
}
