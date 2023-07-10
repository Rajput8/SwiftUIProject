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


/*
 struct ProfileHeaderView: View {
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
 .overlay (
 GeometryReader { reader -> Color in
 let minY = reader.frame(in: .global).minY
 DispatchQueue.main.async {
 if topHeaderOffset == 0 {
 topHeaderOffset = minY
 }
 }

 return Color.clear
 }
 .frame(width: 0, height: 0)
 , alignment: .bottom
 )
 }
 }
 */
