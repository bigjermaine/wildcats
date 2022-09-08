//
//  ButtonView.swift
//  WildCats
//
//  Created by Apple on 03/09/2022.
//

import SwiftUI

struct ButtonView: View {
    @Binding var show: Bool
    var body: some View {
        
        HStack {
            Text("Explore")
                .font(.largeTitle)
                .foregroundColor(.secondary)
            Image(systemName: "pawprint.fill")
                .font(.largeTitle)
                
        }
        .padding()
    .background(.gray)
    .cornerRadius(25)
    .onTapGesture {
        self.show.toggle()
    }
        if show {
        
            ContentView()
        }
    

    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(show:.constant(false))
    }
}
