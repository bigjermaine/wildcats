//
//  HomeView.swift
//  WildCats
//
//  Created by Apple on 03/09/2022.
//

import SwiftUI

struct HomeView: View {
    var cat:WildCats
    @State private var Zoom = CGSize.zero
    @State private var tap = false
    @State var show: Bool = false
    var body: some View {
        
            
            ZStack {
                
                   
                CardView(color: .blue, angle: 0, cat: cat)
                    .offset(x: Zoom.width ,y: -170)
                    .scaleEffect(tap ? 1.2 : 1)
                    CardView(color: .red, angle: 0, cat: cat)
                        .offset(x: Zoom.width ,y: -180)
                        .scaleEffect(tap ? 1.2 : 1)
                CardView(color:.purple, angle: 0, cat: cat)
                        .offset(x: Zoom.width ,y: -190)
                        .scaleEffect(tap ? 1.2 : 1)
                    CardView(color:.black, angle: 0, cat: cat)
                
                        .offset(x: Zoom.width ,y: -200)
                        .scaleEffect(tap ? 1.2 : 1)
                
                
                
                ButtonView(show: $show)
                    
        }
                
           
            
        
                    
               

                
            
                
            
        
        
            .gesture(
                DragGesture().onChanged {
                    value  in
                    Zoom = value.translation
                }
                    .onEnded { value in
                        Zoom = .zero
                    }
        )
        
            if show {
                Color.white.ignoresSafeArea()
                ContentView()
            }
        
        
 }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(cat: WildCats(name: "Lion", family:"Felidae", description: "Lions have strong, compact bodies and powerful forelegs, teeth and jaws for pulling down and killing prey. Their coats are yellow-gold, and adult males have shaggy manes that range in color from blond to reddish-brown to black", image: "Lion", Class: "mammalia"),show: false)
    }
}
