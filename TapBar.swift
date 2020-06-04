//
//  ContentView.swift
//  travelID
//
//  Created by stephane peyras on 12/02/2020.
//  Copyright © 2020 stephane peyras. All rights reserved.
//

import SwiftUI

struct TapBar: View {
    @State var selected = 0
    var body: some View {
            TabView(selection: $selected) {
                
                NavigationView {
                    Destination()}
                    .tabItem {
                        Image(systemName: "map")
                        Text("Destinations")
                }.tag(0)
                NavigationView {
                    Profil()}
                    .tabItem {
                        Image(systemName: "person.crop.circle")
                        Text("Profil")
                }.tag(1)
                Message(/*name:"test"*/)
                    .tabItem {
                        Image(systemName: "message")
                            .padding(.bottom, 0.0)
                            
                        Text("Message")
                }.tag(2)
            }
        }
    }


struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar()
    }
}
