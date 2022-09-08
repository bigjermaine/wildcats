//
//  ContentView.swift
//  ShoppingApplocation
//
//  Created by Apple on 28/08/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManger = CartManger()
    var columns = [GridItem(.adaptive(minimum: 150),spacing: 20)]
    var body: some View {
       NavigationView {
           ScrollView {
               LazyVGrid(columns:columns){
                    
                   ForEach( productlist, id: \.id) { Product in
                    ProductCard(product:Product ).environmentObject(cartManger)
                }
               }.padding()
           }
           .navigationTitle("Sweater Shop")
           .toolbar{
               NavigationLink{
                   CartView().environmentObject(cartManger)
               }label:   {
                   CartButton(NumberOfProducts:cartManger.products.count)
               }
               .foregroundColor(.black)
           }
        }
       .navigationViewStyle(StackNavigationViewStyle())
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
