//
//  ContentView.swift
//  travelID
//
//  Created by Stephane Peyras on 10/02/2020.
//  Copyright © 2020 Stephane Peyras. All rights reserved.
//

import SwiftUI

struct Destination: View {
    @State var selected = 0
    struct Destinations : Identifiable{
        var icon    : String
        var title   : String
        var id      = UUID()
    }
    
    let destinationList : [Destinations] = [
        Destinations(icon: "Image", title: "AMERIQUE"),
        Destinations(icon: "Image-2", title: "ASIE"),
        Destinations(icon: "Image-5", title: "AFRIQUE"),
        Destinations(icon: "Image-3", title: "EUROPE"),
        Destinations(icon: "Image-4", title: "OCEANIE")
    ]
    var body: some View {
        VStack(spacing: 0) {
            ForEach(destinationList) { result in
                ZStack {
                    Image("\(result.icon)")
                        .resizable()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0,  maxHeight: .infinity)
                        .overlay(Color(red: 0, green: 0, blue: 0, opacity: 0.3))
                    
                    VStack {
                        NavigationLink(destination: Profil()) {
                            Text("\(result.title)")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                        }
                        .frame(width: 300, height: 70)
                        .background(Color(red: 1, green: 1, blue: 1, opacity: 0.5))
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    }
                }
            }
        }
        .navigationBarTitle("", displayMode: .inline)
    }
}

struct Destination_Previews: PreviewProvider {
    static var previews: some View {
        Destination()
    }
}
