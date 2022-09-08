//
//  AnimalView.swift
//  WildCats
//
//  Created by Apple on 02/09/2022.
//

import SwiftUI

struct AnimalView: View {
    var cat:WildCats
    var body: some View {
       
    NavigationView {
      
        
            VStack {
                
                Spacer()
                VStack(spacing:10){
                    HStack {
                        Text("Family:")
                            . font(.title3)
                            .foregroundColor(.black)
                        Text( cat.family)
                        Spacer()
                    }
                    .padding(.top, 5.0)
                   
                    
                    
                    Text(cat.description)
                      
                    
                }
                .frame(maxWidth:.infinity,maxHeight: .infinity,alignment: .leading)
                  .padding()
                .background(LinearGradient(colors: [.red,.gray,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                .foregroundColor(.white)
                    
                
               
                    
                    VStack {
                        Image(cat.image).resizable()
                           
                    }
                    .frame(maxWidth:.infinity,maxHeight: 350)
                         
                    
                   
                    
               
              
                }
            .background(LinearGradient(colors: [.red,.gray,.blue], startPoint: .topLeading, endPoint: .bottomTrailing))
                
            .ignoresSafeArea()
        }
        
        
    }
}


struct AnimalView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalView(cat: WildCats(name: "Lion", family:"Felidae", description: "Lions have strong, compact bodies and powerful forelegs, teeth and jaws for pulling down and killing prey. Their coats are yellow-gold, and adult males have shaggy manes that range in color from blond to reddish-brown to black", image: "Lion", Class: "mammalia"))
    }
}
