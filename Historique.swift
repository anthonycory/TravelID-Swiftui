//
//  Historique.swift
//  travelID
//
//  Created by stephane peyras on 14/02/2020.
//  Copyright © 2020 stephane peyras. All rights reserved.
//

import SwiftUI
struct ContentView: View {
    let names = ["toto","tata","titi","tutu"]
@State private var searchTerm : String = ""
var body: some View {
      NavigationView{
         List {
            SearchBar(text: $searchTerm)
            
            ForEach(self.names.filter{
              self.searchTerm.isEmpty ? true :    $0.localizedStandardContains(self.searchTerm)
}, id: \.self) { name in
   Text(name)
              }
         }
//          .navigationBarTitle(Text("Search Bar"))
}
    }
}
struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
