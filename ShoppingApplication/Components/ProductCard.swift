//
//  ProductCard.swift
//  ShoppingApplocation
//
//  Created by Apple on 28/08/2022.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var  cartManger : CartManger
    var product:Product
    var body: some View {
        ZStack(alignment:.topTrailing){
            ZStack(alignment:.bottom){
                Image(product.image)
                    .resizable()
                    
                    .frame(width:180)
                  
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                   
                    
                VStack(alignment:.leading){
                    Text(product.name).bold()
                    
                    Text("\(product.price)$").font(.caption)
                }
                .padding()
                .frame(width:180,alignment:.leading)
                .background(.thinMaterial)
                .cornerRadius(20)
            }
            .frame(width:180,height: 250)
        .shadow(radius: 3)
            Button{
                cartManger.addToCart(product:product )
            }label:{
                Label("", systemImage: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(100)
                    .padding()
            }
        }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productlist[0]).environmentObject(CartManger())
    }
}
