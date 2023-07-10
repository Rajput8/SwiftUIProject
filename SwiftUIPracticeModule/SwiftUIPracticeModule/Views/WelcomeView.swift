//
//  WelcomeView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 10/06/23.
//

import Foundation
import SwiftUI

struct WelcomeView: View {

    @State var buttonText: String = ""
    @State var isLinkActive = false

    var body: some View {
        GeometryReader { parentViewRect in
            NavigationView {
                ZStack {
                    VStack {
                        Image("welcomeBG")
                            .resizable()
                            .frame(maxWidth: parentViewRect.size.width,
                                   maxHeight: parentViewRect.size.height)
                            .edgesIgnoringSafeArea(.all)
                        Spacer(minLength: 25)
                        HStack(alignment: .center) {
                            /// If we removed the isActive state, navigation would no longer function. 'LOGIN tapped' is the only text there i.e. only print command work.
                            /// isActive:  A binding to a Boolean value that indicates whether destination is currently presented.
                            /// CardsListView(choice: "Cards")
                            NavigationLink(destination: ProfileView(feedType: .feedsInGridFormat), isActive: $isLinkActive) {
                                Button(action: {
                                    print("LOGIN tapped")
                                    self.isLinkActive = true
                                }) {
                                    Text("LOGIN")
                                        .frame(minWidth: 0, maxWidth: .infinity)
                                        .font(.system(size: 18))
                                        .foregroundStyle(LinearGradient(gradient: GradientColors.colors,
                                                                        startPoint: UnitPoint(x: 0, y: 0.5),
                                                                        endPoint: UnitPoint(x: 1.0, y: 0.5)))
                                        .padding()
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 25)
                                                .stroke(LinearGradient(gradient: GradientColors.colors,
                                                                       startPoint: UnitPoint(x: 0, y: 0.5),
                                                                       endPoint: UnitPoint(x: 1.0, y: 0.5)),
                                                        lineWidth: 5)
                                        )
                                }
                                .cornerRadius(25)
                                .padding()
                            }

                            Button(action: {
                                print("REGISTER tapped")
                            }) {
                                Text("REGISTER")
                                    .frame(minWidth: 0, maxWidth: .infinity)
                                    .font(.system(size: 18))
                                    .padding()
                                    .foregroundColor(.white)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 25)
                                            .stroke(Color.black, lineWidth: 0)
                                    )
                            }
                            .background(LinearGradient(gradient: GradientColors.colors,
                                                       startPoint: UnitPoint(x: 0, y: 0.5),
                                                       endPoint: UnitPoint(x: 1.0, y: 0.5)))
                            .cornerRadius(25)
                            .padding()
                        }
                        .frame(width: parentViewRect.size.width, height: 50)
                    }

                    VStack(alignment: .leading, content: {
                        Image("myCard")
                            .resizable()
                            .frame(width: 150, height: 150)

                        Text("Get your\nbusiness online")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .font(.system(size: 50))
                            .foregroundColor(.gray)
                    })
                    .padding(.leading, 10)
                    .padding(.top, -(parentViewRect.size.width-80))
                }
            }
        }
    }
}

struct Previews_WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

struct GradientColors {
    static var colors: Gradient {
        let grColors = Gradient(colors:  [Color(red: 0.369, green: 0.553, blue: 0.839),
                                          Color(red: 0.302, green: 0.213, blue: 0.8),
                                          Color(red: 0.765, green: 0.263, blue: 0.537),
                                          Color(red: 0.859, green: 0.345, blue: 0.353)])
        return grColors
    }
}
