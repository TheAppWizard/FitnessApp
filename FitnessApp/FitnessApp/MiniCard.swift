//
//  MiniCard.swift
//  FitnessApp
//
//  Created by Shreyas Vilaschandra Bhike on 31/07/21.
//

import SwiftUI

struct MiniCard: View {
    var body: some View {
        VStack{
            
            
            HStack{
                Image(systemName: "figure.walk")
                        .resizable()
                        .frame(width: 25, height: 40, alignment: .center)
                                       .foregroundColor(Color.black)
                    .opacity(1)
                                   
                    Spacer().frame(width: 100, alignment: .center)
                                   
                                   Text("5500") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                                   Spacer().frame(width: 60, alignment: .center)
                                   
                    Text("Steps") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                }
            
            Divider()
            
            HStack{
                Image(systemName: "figure.walk")
                        .resizable()
                        .frame(width: 25, height: 40, alignment: .center)
                                       .foregroundColor(Color.black)
                    .opacity(0.7)
                                   
                    Spacer().frame(width: 100, alignment: .center)
                                   
                                   Text("4800") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                                   Spacer().frame(width: 60, alignment: .center)
                                   
                    Text("Steps") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                }
            
            Divider()
            
            HStack{
                Image(systemName: "figure.walk")
                        .resizable()
                        .frame(width: 25, height: 40, alignment: .center)
                                       .foregroundColor(Color.black)
                    .opacity(0.5)
                                   
                    Spacer().frame(width: 100, alignment: .center)
                                   
                                   Text("4500") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                                   Spacer().frame(width: 60, alignment: .center)
                                   
                    Text("Steps") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                }
           
            Divider()
            HStack{
                Image(systemName: "figure.walk")
                        .resizable()
                        .frame(width: 25, height: 40, alignment: .center)
                                       .foregroundColor(Color.black)
                    .opacity(0.3)
                                   
                    Spacer().frame(width: 100, alignment: .center)
                                   
                                   Text("3000") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                                   Spacer().frame(width: 60, alignment: .center)
                                   
                    Text("Steps") .font(.system(size: 30)).fontWeight(.thin).foregroundColor(Color.black)
                                   
                }
            
     
            
     
            
   
           
                           
        }
    }

}

struct MiniCard_Previews: PreviewProvider {
    static var previews: some View {
        MiniCard()
    }
}
//
