//
//  ContentView.swift
//  MyProfil
//
//  Created by adison on 11/02/2020.
//  Copyright © 2020 adison. All rights reserved.
//

import SwiftUI

struct Profil: View {
    @State private var pref = ["#voyages", "#îles", "#randonnée"]
    @State private var interet : String =  ""
    @State private var ter : String = "bonjour c'est ma bio"
    @State private var nameUser = "Any De lavega"
    @State private var ageUser = "26 ans"
    @State private var paysUser = "France"
    
    var body: some View {
        ZStack {
        
        Image("Image")
            .resizable()
            .opacity(0.3)
            .blur(radius: 5.0)
       
                VStack{
            HStack(alignment: .top){
                ZStack{
                    Image("Image-8")
                    .resizable()
                    .frame(width: 150, height: 120)
                    .clipShape(Circle())
                }
                .padding([.top, .leading])
                VStack(alignment: .leading){
                    TextField("nom prenom", text: $nameUser)
                        .padding([.top, .leading])
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Divider()
                    Text("26 ans")
                        .fontWeight(.thin)
                        .padding(.leading)
                    Divider()
                    Text("France")
                        .fontWeight(.thin)
                        .padding(.leading)
                }
                
                
            }
            Text("Quels sont vos centres d'intérêts ? ")
                .padding(10.0)
                .frame(minWidth: 0, maxWidth: .infinity)
                .background(Color(red: 238/255, green: 238/255, blue: 238/255))
            HStack{
                TextField("saisissez un centre d'intret ex : #cocotier ", text: $interet)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(3.0)
                Button(action: {
                    self.pref.append("#\(self.interet)")
                    self.interet = ""
                }) {
                    Text("Ajouter")
                        .foregroundColor(.blue)
                        .padding()
                }
            }
                    Divider()
            
            ScrollView(.horizontal){
                HStack {
                    ForEach(pref, id: \.self){
                        
                        Text($0)
                            .font(.footnote)
                            .foregroundColor(.white)
                            
                            .padding(10.0)
                            .background(Color(.gray))
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        
                    }
                    
                    
                }
                .padding(.leading)
            }
            

            HStack{
                Text("5 éléments minimum")
                    .font(.footnote)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.leading)
                Spacer()
                Text("\(self.pref.count)/20")
                    .font(.callout)
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .padding(.trailing)
            }
                    VStack {
                        Divider()
                        TextField("\(ter)", text: $ter)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 300.0)
                    }
                    .padding(.leading)
                    Spacer()
                    VStack {
                NavigationLink(destination: AllMatch()){
                    Text("valider")
                        .foregroundColor(.white)
                        .padding(.vertical, 20.0)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: 40)
                        .background(Color.blue)
                    
                }
            }
            
            
            
        }
        
        }
        
        
        
        
        
        
        .navigationBarHidden(true)
}
}
struct Profil_Previews: PreviewProvider {
    static var previews: some View {
        Profil()
    }
}
