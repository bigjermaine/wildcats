//
//  ContentView.swift
//  WildCats
//
//  Created by Apple on 02/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
     NavigationView {
            ScrollView( showsIndicators: false){
                
                ForEach(CatsFamily, id:\.id){
                    index in
                    NavigationLink  {
                        AnimalView(cat: index)
                    }label:{ HStack {
                        CardView(cat:index)
                    }
                    .padding(.all, 30.0)
                    
                    
                }
                   
                
             }
            }
            .navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
