//
//  ProfileButtons.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct EditShareAddUsersButtons: View {
  var geoReader: GeometryProxy
    var body: some View {
        HStack {
            ButtonWithText(title: "Edit Profile", actionEvent: .editProfile)
            ButtonWithText(title: "Share Profile", actionEvent: .shareProfile)
            ButtonWithImage(icon: "addUser",
                            width: geoReader.size.width * 0.1,
                            actionEvent: .addUsers)
        }
        .frame(height: 35)
        .padding([.horizontal, .vertical])
    }
}
