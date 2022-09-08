//
//  WildCatsApp.swift
//  WildCats
//
//  Created by Apple on 02/09/2022.
//

import SwiftUI

@main
struct WildCatsApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(cat: WildCats(name: "Lion", family:"Felidae", description: "Lions have strong, compact bodies and powerful forelegs, teeth and jaws for pulling down and killing prey. Their coats are yellow-gold, and adult males have shaggy manes that range in color from blond to reddish-brown to black", image: "Lion", Class: "mammalia"))
        }
    }
}
