//
//  CartManger.swift
//  ShoppingApplocation
//
//  Created by Apple on 28/08/2022.
//

import Foundation

class CartManger: ObservableObject{
    @Published private (set) var products: [Product] = []
    @Published private (set) var total:Int = 0
    
    func addToCart(product:Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product:Product){
        products = products.filter {$0.id != product.id}
        total -= product.price
    }
}
