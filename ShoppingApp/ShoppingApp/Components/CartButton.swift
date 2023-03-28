//
//  CartButton.swift
//  ShoppingApp
//
//  Created by Pragath on 28/03/23.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top, 5)
            if numberOfProducts > 0{
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(.red)
                    .cornerRadius(15)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOfProducts: 1)
    }
}
