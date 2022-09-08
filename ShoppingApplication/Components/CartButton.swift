//
//  CartButton.swift
//  ShoppingApplocation
//
//  Created by Apple on 28/08/2022.
//

import SwiftUI

struct CartButton: View {
    var NumberOfProducts:Int
    var body: some View {
        ZStack(alignment:.topTrailing) {
            
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if NumberOfProducts > 0 {
                Text ("\(NumberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height:15)
                    .background(Color(red: 1.0, green: 0.0, blue: 0.0, opacity: 0.721))
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(NumberOfProducts: 1)
    }
}
