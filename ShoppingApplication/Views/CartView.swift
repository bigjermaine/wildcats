//
//  CartView.swift
//  ShoppingApplocation
//
//  Created by Apple on 28/08/2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var  cartManger:CartManger
   
    var body: some View {
        ScrollView{
            if cartManger.products.count > 0 {
                ForEach(cartManger.products, id:\.id) { product in
                ProductRow( product: product).environmentObject(cartManger)
                }
                VStack {
                    HStack{
                        Text("your card total is ")
                        Spacer()
                        Text("$\(cartManger.total).00").bold()
                    }
                    .padding()
                    PaymentButton(action: {}).padding()
                }
            }else{
            Text("my cart is empty")
         }
        }
        .navigationTitle("My Cart")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView().environmentObject(CartManger())
    }
}
