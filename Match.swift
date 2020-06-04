//
//  Match.swift
//  travelID
//
//  Created by stephane peyras on 17/02/2020.
//  Copyright © 2020 stephane peyras. All rights reserved.
//

import SwiftUI

struct Match: View {
    var body: some View {
        
        ZStack {
           
            Image("Image")
                .resizable()
                .opacity(0.3)
                .blur(radius: 5.0)
            
            VStack {
               
                HStack(alignment: VerticalAlignment.center, spacing: 26) {
                    
                    Image("Image-7")
                        .resizable()
                        .frame(width: 100, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                        .padding(18)
                        .shadow(radius: 8)
                        
                    VStack(alignment: .leading) {
                        
                        Text("Dupont")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.trailing)
                        Text("Alexia")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        Text("29 ans")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        Text("Française")
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                    }
                    Spacer()
                }
                Text("Destination: New York, Amérique")
                        .padding(8)
                        .background(Color.white)
                            .shadow(color: Color.secondary, radius: 4, x: 5, y: 5)
                
                HStack {
                    
                    Text("Centres d'intêret").font(.title)
                        .fontWeight(.bold)
                       
                        .foregroundColor(Color(red:0.650, green: 0.150, blue: 0.2, opacity: 0.80))
                        .padding(30)
                }
                
                HStack {
                    Text("#danse")
                        .font(.footnote)
                        .foregroundColor(.white)
                        
                        .padding(10.0)
                        .background(Color(.gray))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        
                    Text("#sport")
                   .font(.footnote)
                    .foregroundColor(.white)
                    
                    .padding(10.0)
                    .background(Color(.gray))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Text("#musique")
                    .font(.footnote)
                    .foregroundColor(.white)
                    
                    .padding(10.0)
                    .background(Color(.gray))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                }
//                Text("Destination: New York, Amérique")
//                .padding(12)
//                .background(Color.white)
//                    .shadow(color: Color.secondary, radius: 4, x: 5, y: 5)
                HStack {
                    Text("#voyage")
                    .font(.footnote)
                    .foregroundColor(.white)
                    
                    
                    .padding(10.0)
                    .background(Color(.gray))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Text("#équitation")
                    .font(.footnote)
                    .foregroundColor(.white)
                    
                    .padding(10.0)
                    .background(Color(.gray))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    Text("#langues")
                   .font(.footnote)
                    .foregroundColor(.white)
                    
                    .padding(10.0)
                    .background(Color(.gray))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                }.padding()
                Divider()
                HStack{
                    Text("Petite présentation")
                        .fontWeight(.bold)
                       
                        .font(.title)
                        .foregroundColor(Color(red:0.650, green: 0.150, blue: 0.2, opacity: 0.80))
                        .padding(30)
                }
                
                HStack {
                    
                    Text("Je m'appelle Alexia et je suis passionnée de voyages.Mes centres d'intérêts sont naturellement les langues mais aussi la musique, l'équitation, la danse ... ").padding()
                        .background(Color(red:1, green: 1, blue: 1, opacity: 0.50)).foregroundColor(Color.black)
                    
                    
                }
                .padding(10)
                Spacer()
                

            }
        }.navigationBarItems(trailing:
                       HStack{
                            NavigationLink(destination: Chat())
                                           {
                                               Spacer()
                                               Image(systemName: "message")
                                               .font(.system(size: 20))
                                               .padding(.trailing, 20)
                           
                                           }
            }.padding())
    }
    
}




struct Match_Previews: PreviewProvider {
    static var previews: some View {
        Match()
    }
}


