//
//  Message.swift
//  travelID
//
//  Created by stephane peyras on 17/02/2020.
//  Copyright © 2020 stephane peyras. All rights reserved.
//

import SwiftUI

struct Message: View {
    @State private var name: String = ""
    var body: some View {
       NavigationView {
//        GeometryReader { geometry in
            ZStack{
                Image("Image")
                .resizable()
                .opacity(0.3)
                .blur(radius: 5.0)
                    .edgesIgnoringSafeArea(.all)
                VStack {
//                    HStack {
//                        Image("Image-8")
//                        .resizable()
//                        .frame(width: 40, height: 40)
//                        .clipShape(Circle())
//                        Text("Any De lavega")
//                    }
//                    .padding(.vertical, 25.0)
//                    .frame(width: 420.0)
//                    .background(Color.white)
                    HStack {
                        Image(systemName: "magnifyingglass").resizable()
                            .scaledToFit()
                            
                            .foregroundColor(Color.gray)
                            .padding(.leading)
                            .frame(width: 35.0, height: 30.0)
                            .font(.title)
                        TextField("Recherche..", text: self.$name)
                    }
                    .padding(7.0)
                    .background(Color(red: 238/255, green: 238/255, blue: 238/255))
                    .padding ()
                    ScrollView {
                    HStack {
                        Image("Image-7")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                        NavigationLink(destination: Chat())
                        {
                        VStack(alignment: .leading) {
                            
                                Text("Alexia Dupont ")
                                    .foregroundColor(.black)
                        
                            Text("Ca va ?")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.black)
                        }
                        }
                        .padding(.leading)
                        Spacer()
                        Image(systemName: "camera").resizable()
                        .scaledToFit()
                        .frame(width: 20.0, height: 30.0)
                    }
                    .padding()
//                    .frame(width: 350.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.70))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(-6.0)
                    HStack {
                        Image("Image-9")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Roux Staff")
                                .foregroundColor(.black)
                            Text("Bonjour")
                                .font(.footnote)
                                .fontWeight(.light)
                        }
                        .padding(.leading)
                        Spacer()
                        Image(systemName: "camera").resizable()
                        .scaledToFit()
                        .frame(width: 20.0, height: 30.0)
                    }
                    .padding()
//                    .frame(width: 350.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.70))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(-6.0)
                    HStack {
                        Image("Image-9")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .clipShape(Circle())
                        VStack(alignment: .leading) {
                            Text("Roux Staff")
                                .foregroundColor(.black)
                            Text("Ok, merci")
                                .font(.footnote)
                                .fontWeight(.light)
                        }
                        .padding(.leading)
                        Spacer()
                        Image(systemName: "camera").resizable()
                        .scaledToFit()
                        .frame(width: 20.0, height: 30.0)
                    }
                    .padding()
//                    .frame(width: 350.0)
                    .background(Color(red: 1.0, green: 1.0, blue: 1.0, opacity: 0.70))
                    .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .padding(-6.0)
                    Spacer()
                }
                }
            }
            .navigationBarTitle(Text("Liste de mes amis"),displayMode: .inline)
//            .navigationBarTitle("Liste de mes amis")
        }
       
        }
    }
//}

struct Message_Previews: PreviewProvider {
    static var previews: some View {
        Message()
    }
}
