//
//  Product.swift
//  ShoppingApplocation
//
//  Created by Apple on 28/08/2022.
//

import Foundation

struct  Product: Identifiable {
    var id = UUID()
    var name:String
    var image:String
    var price:Int
    
}

var productlist = [Product( name: "dave1", image: "shopping1", price: 54),Product( name: "dave2", image: "shopping2", price: 50),Product( name: "dave3", image: "shopping3", price: 48),Product( name: "dave4", image: "shopping4", price: 56),Product( name: "dave5", image: "shopping5", price: 57),Product( name: "dave6", image: "shopping6", price: 54)]
