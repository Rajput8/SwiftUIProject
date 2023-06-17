//
//  CategoryProductModel.swift
//  SwiftUIPracticeModule
//
//  Created by Shiv Kumar on 17/06/23.
//

import Foundation

struct Category: Identifiable {
    var name: String
    var products: [Product]
    var id: String { name }

    static func preparedListData() -> [Category] {
        var products = [Product]()
        let product1 = Product(name: "Apple", price: 20, quantity: 10, isOutofStock: true)
        let product2 = Product(name: "Mango", price: 10, quantity: 1, isOutofStock: false)
        let product3 = Product(name: "Orange", price: 30, quantity: 15, isOutofStock: false)
        let product4 = Product(name: "Grapes", price: 28, quantity: 132, isOutofStock: true)
        products = [product1, product2, product3, product4]

        var categories = [Category]()
        let category1 = Category(name: "Fruits", products: products)
        let category2 = Category(name: "Vegetables", products: [product1, product2])
        let category3 = Category(name: "Snacks", products: [product1])
        categories = [category1, category2, category3]

        return categories
    }
}

struct Product: Identifiable {
    var name: String
    var price: Int
    var quantity: Int
    var isOutofStock: Bool
    var id: String { name }
}
