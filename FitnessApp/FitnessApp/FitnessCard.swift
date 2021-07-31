//
//  FitnessCard.swift
//  FitnessApp
//
//  Created by Shreyas Vilaschandra Bhike on 31/07/21.
//

import SwiftUI

struct FitnessCard: View {
    var body: some View {
        
        
ZStack{
    

   //Color.black
            
         
            
    ZStack{
        RoundedRectangle(cornerRadius: 25.0)
                .foregroundColor(.white).opacity(1)
                .frame(width: 380, height: 300, alignment: .center)
                .offset(x: 0, y: 200)
        
        MiniCard().offset(x: 0, y: 200)
        MaxSteps()
            }
        
        }
    }
}

struct FitnessCard_Previews: PreviewProvider {
    static var previews: some View {
        FitnessCard()
    }
}

struct MaxSteps: View {
    var body: some View {
        ZStack{
            
            HStack{
            Text("5000")
                .foregroundColor(.white)
                .font(.system(size: 95, weight: .light, design: .default))
           
                
                Spacer().frame(width: 20, height: 0, alignment: .center)
                
                    VStack{
                        Text("Max")
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            .offset(x: -10.0, y: 5)
                            
                        
                        Text("Steps")
                            .font(.largeTitle)
                            .fontWeight(.thin)
                            .foregroundColor(.white)
                            
                    }
            
            }
        
        
        
        
        }.offset(x: 0, y: -25)
        .padding()
    }
}


