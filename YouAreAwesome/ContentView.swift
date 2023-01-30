//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Lauren Sampson on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    var body: some View {
        
        VStack (){
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundColor(.red)
                .frame(height: 150)
                .frame(maxWidth:.infinity)
                .padding()
           
            
            Spacer()
            
            
            HStack{
                Button("Show Message"){
                    let messages = ["You are awesome!", "You are great!", "Fabulous? That's you!", "You are great!", "You make me smile", "When the genius bar needs help, they call you"]
                    messageString = messages[messageNumber]
                    messageNumber += 1
                    if messageNumber == messages.count {
                        messageNumber = 0
                    }
                    imageName = "image\(imageNumber)"
                    imageNumber += 1
                    if (imageNumber > 9){
                        imageNumber = 0
                    }
                    print(imageNumber)
                    
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
