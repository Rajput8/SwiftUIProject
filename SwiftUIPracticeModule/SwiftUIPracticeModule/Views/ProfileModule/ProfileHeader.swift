//
//  ProfileHeader.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct ProfileHeader: View {
    var body: some View {
        HStack {
            Image("lock")
                .resizable()
                .frame(width: 15, height: 15)
            Text("rajput_shiv8")
                .font(.system(size: 25, weight: .bold))
            Spacer()
            HStack(spacing: 25) {
                Image(systemName: "plus.app")
                    .font(.title)
                    .foregroundColor(.primary)
                Image(systemName: "line.horizontal.3")
                    .font(.title)
                    .foregroundColor(.primary)
            }
        }
        .padding([.horizontal, .top])
    }
}
