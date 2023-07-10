//
//  DiscoverPeople.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 08/07/23.
//

import Foundation
import SwiftUI


struct DiscoverPeople: View {

    let rows = [GridItem(.fixed(50))]
    let items = 1...10

    var body: some View {
        HStack {
            Text("Discover people")
                .font(.body)
                .fontWeight(.semibold)
            Spacer()
            Button {
                _ = printOnConsole("tapped See All")
            } label: {
                Text("See All")
                    .font(.body)
                    .fontWeight(.semibold)
            }
        }
        .padding(.horizontal)

        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(items, id: \.self) { item in
                    if item == 1 {
                        DiscoveredPeopleView()
                            .background(Color("DFD5EE"))
                            .padding([.leading], 10)
                    } else {
                        DiscoveredPeopleView()
                            .background(Color("DFD5EE"))
                    }
                }
            }
        }
    }
}

struct DiscoveredPeopleView: View {
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    Spacer()
                    Image("close")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .padding(.trailing, 10)
                }
                .frame(width: 160, height: 30)
                .background(Color(.red))
                .hidden()

                Image("myCard")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(50)
                    .padding(.top, 12)
            }

            Text("Lekha Grover 👩‍💻")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
                .lineLimit(1)
                .padding(.horizontal, 10)
                .padding(.vertical, 0.5)

            Text("Followed by\nrajput_shiv8 ")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(Color(.gray))
                .padding(.horizontal, 10)
                .lineLimit(2)
                .multilineTextAlignment(.center)

            Button {
                _ = printOnConsole("tapped Follow Profile")
            } label: {
                Text("Follow")
                    .font(.body)
                    .fontWeight(.semibold)
                    .padding(5)
                    .foregroundColor(Color(.white))
            }
            .frame(height: 35)
            .padding(.horizontal, 30)
            .background(Color("458EFF"))
            .cornerRadius(5)
            Spacer()
        }
        .frame(width: 160, height: 235)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(LinearGradient(gradient: GradientColors.colors,
                                       startPoint: UnitPoint(x: 0, y: 0.5),
                                       endPoint: UnitPoint(x: 1.0, y: 0.5)),
                        lineWidth: 2)
        )
    }
}
