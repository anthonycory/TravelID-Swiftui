//
//  Modale.swift
//  travelID
//
//  Created by stephane peyras on 12/02/2020.
//  Copyright © 2020 stephane peyras. All rights reserved.
//

import SwiftUI

struct Block: View {
    var body: some View {

        VStack {
            HStack {

                Image("Image-7")
                    .resizable()
                    .frame(width: 45.0, height: 45.0)
                    .clipShape(Circle())
                Text("Alexia Dupont")
                
            }
            Spacer()
        HStack {
            Spacer()
            Text("SIGNALER")
                .fontWeight(.black)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(10.0)
        .background(Color.red)

        HStack {
            Spacer()
            Text("BLOQUER")
                .fontWeight(.black)
                .foregroundColor(.white)
            Spacer()
        }
        .padding(10.0)
        .background(Color.gray)
            Image("Image-1")
                .padding(-13.0)
            .opacity(0.3)
            .blur(radius: 5.0)
            HStack {
                Spacer()
                .background(Color.gray)
            }


                       Spacer()
    }
     .background(LinearGradient(gradient: Gradient(colors: [.blue, .white , .red]), startPoint: .leading, endPoint: .trailing))
     .edgesIgnoringSafeArea(.all)
        .navigationBarTitle("test")
//        .navigationBarHidden(false)
    }
    
}

struct Block_Previews: PreviewProvider {
    static var previews: some View {
        Block()
    }
}
