//
//  ProductDetailView.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 17/06/23.
//

import Foundation
import SwiftUI

struct ProductDetailView: View {

    var productDetail: Product

    var body: some View {
         NativeDetailView()
        // CustomDetailView(productDetail: productDetail)
    }
}

struct NativeDetailView: View {
    var body: some View {
        HStack {
            Image("myCard")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            Text("Populate data in list goes 🥰😍")
                .frame(minWidth: 0, maxWidth: .infinity)
                .font(.system(size: 18))
                .foregroundStyle(LinearGradient(gradient: GradientColors.colors,
                                                startPoint: UnitPoint(x: 0, y: 0.5),
                                                endPoint: UnitPoint(x: 1.0, y: 0.5)))
            Spacer()
            VStack(alignment: .trailing, spacing: 8 ,content: {
                Text("Quantity: 1 Kg").frame(alignment: .trailing)
                Text("Price: Rs. 10/-").frame(alignment: .trailing)
            })
        }
    }
}

struct CustomDetailView: View {

    var productDetail: Product

    var body: some View {
        HStack {
            Image("myCard")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(25)
            Text("Populate data in list goes 🥰😍")
                .frame(minWidth: 0, maxWidth: .infinity)
                .font(.system(size: 18))
                .foregroundStyle(LinearGradient(gradient: GradientColors.colors,
                                                startPoint: UnitPoint(x: 0, y: 0.5),
                                                endPoint: UnitPoint(x: 1.0, y: 0.5)))
            Spacer()
            VStack(alignment: .trailing, spacing: 8 ,content: {
                Text("Quantity: \(productDetail.quantity) Kg").frame(alignment: .trailing)
                Text("Price: Rs. \(productDetail.price)/-").frame(alignment: .trailing)
            })
        }
        .padding(8)
        .overlay(
            RoundedRectangle(cornerRadius: 5)
                .stroke(LinearGradient(gradient: GradientColors.colors,
                                       startPoint: UnitPoint(x: 0, y: 0.5),
                                       endPoint: UnitPoint(x: 1.0, y: 0.5)),
                        lineWidth: 2)
                .shadow(color: .gray, radius: 10)
        )
    }
}

struct Previews_ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardsListView(choice: "Hello")
    }
}
