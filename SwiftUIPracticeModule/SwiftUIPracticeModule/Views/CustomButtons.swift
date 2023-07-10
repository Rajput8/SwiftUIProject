//
//  CustomButtons.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct ButtonWithText: View {

    var title: String
    var actionEvent: ButtonActionEvent

    var body: some View {
        Button {
            _ = printOnConsole("tapped actionEvent is: \(actionEvent)")
        } label: {
            Text(title)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(Color(.white))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.gray))
        .cornerRadius(5)
    }
}

struct ButtonWithImage: View {

    var icon: String
    var width: CGFloat
    var actionEvent: ButtonActionEvent

    var body: some View {
        Button {
            _ = printOnConsole("tapped Add User")
        } label: {
            Image(icon)
                .resizable()
                .frame(width: 20, height: 20)
        }
        .frame(maxWidth: width, maxHeight: .infinity)
        .background(Color(.gray))
        .cornerRadius(5)
    }
}
