//
//  BestMatch.swift
//  travelID
//
//  Created by Stephane Peyras on 13/02/2020.
//  Copyright © 2020 stephane peyras. All rights reserved.
//

import SwiftUI

struct AllMatch: View {
    var body: some View {
        
            VStack (spacing: 0){
                VStack(alignment: .leading) {
//                    Text("Meilleur Match : ")
                    HStack {
                        Image("Image-7")
                            .resizable()
                            .frame(width: 45.0, height: 45.0)
                            .clipShape(Circle())
                        NavigationLink(destination: Match())
                        {
                            Text("Alexia Dupont ")
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Text("12 pts ")
                            .foregroundColor(Color.white)
                    }
                    .padding(10.0)
                    .background(Color.green)
                    
                }
                .padding(.top,23.0)
                .background(Color.white)
                ZStack {
                    Image("Image")
                        .resizable()
                        .opacity(0.3)
                    .blur(radius: 5.0)
                    ScrollView {
                   
                    VStack(spacing: 0)
                    {
//                        Text(" ")
//                            .padding(15.0)
//
//                            .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                    HStack {
                        Image("Image-6")
                            .resizable()
                            .frame(width: 45.0, height: 45.0)
                            .clipShape(Circle())
                        Text("Pablo Escobar ")
                        Spacer()
                        Text("11 pts ")
                    }
                    .padding(10.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                        .padding(-5.0)
                    HStack {
                        Image("Image-6")
                            .resizable()
                            .frame(width: 45.0, height: 45.0)
                            .clipShape(Circle())
                        Text("Tonton David ")
                        Spacer()
                        Text("10 pts ")
                    }
                    .padding(13.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                        .padding(-7.0)
                    HStack {
                        Image("Image-6")
                            .resizable()
                            .frame(width: 45.0, height: 45.0)
                            .clipShape(Circle())
                        Text("Tata René ")
                        Spacer()
                        Text("9 pts ")
                    }
                    .padding(13.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                        .padding(-7.0)
                    HStack {
                        Image("Image-6")
                            .resizable()
                            .frame(width: 45.0, height: 45.0)
                            .clipShape(Circle())
                        Text("Pablito Escobarette ")
                        Spacer()
                        Text("8 pts ")
                    }
                    .padding(13.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                        .padding(-7.0)
                    HStack {
                        Image("Image-6")
                            .resizable()
                            .frame(width: 45.0, height: 45.0)
                            .clipShape(Circle())
                        Text("Tim Duncan ")
                        Spacer()
                        Text("7 pts ")
                    }
                    .padding(13.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 1.0))
                        .padding(-7.0)
                    //  .padding(13.0)
                    //  .background(Color.red)
                }
                     }
                }
                
                Spacer()
            }
            .padding(.top, -16.0)
//            .background(Color.blue)
//            .navigationBarTitle("")
//            .navigationBarHidden(false)
        .navigationBarTitle(Text("Meilleurs Matchs"),displayMode: .inline)
        
    }
}

struct AllMatch_Previews: PreviewProvider {
    static var previews: some View {
        AllMatch()
    }
}
