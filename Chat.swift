//
//  Match.swift
//  travelID
//
//  Created by stephane peyras on 12/02/2020.
//  Copyright © 2020 stephane peyras. All rights reserved.
//
import SwiftUI

struct Chat: View {
    @State private var disc = [String]()
    @State private var dialogue : String =  ""
    @State private var showBlockModal = false
    var body: some View {
        KeyboardHost{
            VStack {
                HStack{
                    Spacer()
                    Image("Image-7")
                        .resizable()
                        .frame(width: 45.0, height: 45.0)
                        .clipShape(Circle())
                    
                    Text("Alexia Dupont")
                    Spacer()
                    
//                    NavigationLink(destination: Block()) {
//                        Image(systemName: "exclamationmark.circle")
//                            .padding(.trailing)
//                            .font(.title)
//                    }
                }
                
                ZStack {
                    Image("Image")
                        .resizable()
                    .opacity(0.3)
                    .blur(radius: 5.0)
                    VStack{
                        HStack{
                        Text("Ca va ?")
                            .foregroundColor(.black)
                            .padding(20)
                            .background(Color(.white))
                            .cornerRadius(10)
                            .padding(8)
                            Spacer()
                        }
                        HStack{
                            Spacer()
                            ForEach(disc, id: \.self){
                                Text($0)
                                    .foregroundColor(.black)
                                    .padding(20)
                                    .background(Color(.white))
                                    .cornerRadius(10)
                                    .padding(8)
                            }
                        }
                        Spacer()
                    }
                    }

                HStack{
                    TextField("Votre Message ...", text: $dialogue)
                        .padding()
                        .foregroundColor(.black)
                 
                    Button(action: {
                        self.disc.append("\(self.dialogue)")
                        self.dialogue = ""
                            }) {
                        Text("Envoyer")
                            .foregroundColor(.green)
                            .padding()
                    }
                }
                .background(Color.gray)
                
            }
        }
.navigationBarTitle(Text("Match"))
.navigationBarItems(trailing:
    
    HStack {
        Button(action: {
            self.showBlockModal.toggle()
        }) {
            
            Image(systemName: "nosign")
                .font(.largeTitle)
                .foregroundColor(.red)
        }.sheet(isPresented: $showBlockModal){
            Block()
        }
})
        
    }
    
}

#if DEBUG
struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
#endif
struct KeyboardHost<Content: View>: View {
    let view: Content
    
    @State private var keyboardHeight: CGFloat = 0
    
    private let showPublisher = NotificationCenter.Publisher.init(
        center: .default,
        name: UIResponder.keyboardWillShowNotification
    ).map { (notification) -> CGFloat in
        if let rect = notification.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? CGRect {
            return rect.size.height
        } else {
            return 0
        }
    }
    
    private let hidePublisher = NotificationCenter.Publisher.init(
        center: .default,
        name: UIResponder.keyboardWillHideNotification
    ).map {_ -> CGFloat in 0}
    
    // Like HStack or VStack, the only parameter is the view that this view should layout.
    // (It takes one view rather than the multiple views that Stacks can take)
    init(@ViewBuilder content: () -> Content) {
        view = content()
    }
    
    var body: some View {
        VStack {
            view
            Rectangle()
                .frame(height: keyboardHeight)
                .animation(.default)
                .foregroundColor(.clear)
        }.onReceive(showPublisher.merge(with: hidePublisher)) { (height) in
            self.keyboardHeight = height
        }
    }
}
