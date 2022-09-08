//
//  CardView.swift
//  WildCats
//
//  Created by Apple on 02/09/2022.
//

import SwiftUI

struct CardView: View {
    var color:Color  = .red
    var angle:Double = 9
    var cat:WildCats
    var body: some View {
       
            VStack{
                VStack(alignment:.leading){
                    
                    
                    HStack{
                    Image(cat.image)
                            .resizable()
                            .frame(maxWidth:100, maxHeight: 100)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(15)
                           
                        Text(cat.name)
                            .font(.system(size: 50, weight: .bold))
                       
                        .foregroundColor(.white)
                        
                        

                    }
                    
                    
                }
                .padding()
                .frame(maxWidth:.infinity, maxHeight: .infinity,alignment: .topLeading)
                    
                
            }
            .frame(width:350, height:200)
            .background(color)
            .cornerRadius(25)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .circular))
            .rotationEffect(Angle(degrees:angle))
            
        .shadow(radius: 30)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cat:WildCats(name: "Lion", family: "", description: "", image: "Lion", Class: ""))
    }
}
