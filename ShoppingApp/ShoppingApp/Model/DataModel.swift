//
//  DataModel.swift
//  ShoppingApp
//
//  Created by Pragath on 27/03/23.
//

import Foundation

struct Product: Identifiable{
    let id = UUID()
    let name: String
    let image: String
    var price: Int
}

var productList = [Product(name: String(localized: "Orange sweater"), image: "sweater1", price: 54),
                   Product(name: String(localized: "Red wine sweater"), image: "sweater2", price: 89),
                   Product(name: String(localized: "Sand sweater"), image: "sweater3", price: 79),
                   Product(name: String(localized: "Sea sweater"), image: "sweater4", price: 94),
                   Product(name: String(localized: "Beige sweater"), image: "sweater5", price: 99),
                   Product(name: String(localized: "Grey sweater"), image: "sweater6", price: 65),
                   Product(name: String(localized: "Mink sweater"), image: "sweater7", price: 54),
                   Product(name: String(localized: "Dark Grey sweater"), image: "sweater8", price: 83)]






