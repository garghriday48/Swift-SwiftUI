//
//  CartManager.swift
//  ShoppingApp
//
//  Created by Pragath on 28/03/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published var products: [Product] = []
    @Published var total: Int = 0
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}
