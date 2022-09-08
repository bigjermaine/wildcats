//
//  ProductRow.swift
//  ShoppingApplocation
//
//  Created by Apple on 28/08/2022.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManger:CartManger
    var product:Product
    var body: some View {
        HStack(spacing:20){
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:50)
                .padding()
            VStack(alignment:.leading, spacing: 10){
                Text(product.name).bold()
                Text("$\(product.price)")
                
            }
            Spacer()
            Image(systemName: "trash").foregroundColor(.red).onTapGesture{
                cartManger.removeFromCart(product: product)
            }
        }
        .padding(.horizontal)
        .frame(maxWidth:.infinity,maxHeight: .infinity)
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productlist[3]).environmentObject(CartManger())
    }
}
