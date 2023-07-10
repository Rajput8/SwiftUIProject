//
//  ProfileDetails.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI

struct ProfileDetails: View {
    var body: some View {
        HStack {
            Image("myCard")
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(50)
                .padding(.leading, 15)
                .overlay (
                    Image(systemName: "plus")
                        .foregroundColor(.white)
                        .padding(6)
                        .background(Color("458EFF"))
                        .clipShape(Circle())
                        .padding(2)
                        .background(Color(.white))
                        .clipShape(Circle())
                        .offset(x: 5, y: 5)
                    , alignment: .bottomTrailing
                )

            VStack {
                Text("6")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text("Posts")
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity)

            VStack {
                Text("2")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text("Followers")
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity)

            VStack {
                Text("176")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                Text("Following")
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity)
        }

        AboutUser()
    }
}

struct AboutUser: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4, content: {
            Text("Shiv Kumar")
                .fontWeight(.bold)
                .foregroundColor(.primary)

            Text("iOS Developer 🧑‍💻")
                .fontWeight(.semibold)
                .foregroundColor(.gray)

            Text("4+ years of expertise in designing and creating user interface applications, interfacing with many databases, and creating iOS client-server applications.\n\nSkills : iOS, XCode, OOP, MVC, MVVM, Singleton, Delegate, KVC, KVO, APIs, Cocoapods, CoreData, iCloud, RESTful, Swift & SwiftUI,  SQLite, Cocoa Bindings, Core Animation, Core Graphics, UI-Kit and Event Kit Framework etc.")

            Link(destination: URL(string: "https://github.com/Rajput8")!, label: {
                Text("https://github.com/Rajput8")
            })
        })
        .padding(.horizontal)
    }
}
