//
//  ContentView.swift
//  ShoppingApp
//
//  Created by Pragath on 27/03/23.
//

import SwiftUI

struct ContentView: View {
    
    
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) {product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle("Sweater Shop")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                    
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .environmentObject(CartManager())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        Group {
//            ContentView()
//                .environment(\.locale, .init(identifier: "hi"))
//            ContentView()
//                .environment(\.locale, .init(identifier: "en"))
//        }
    }
}
