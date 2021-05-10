//
//  ContentView.swift
//  demo
//
//  Created by Maxime Britto on 29/04/2021.
//

import SwiftUI

struct ContentView: View {
    @State var email:String = ""
    @State var successMessage:String?
    @State var errorMessage:String?
    var body: some View {
        VStack {
            TextField("Entrez votre email", text: $email)
            Button("Envoyer", action: buttonTouched)
            if let message = successMessage {
                Text(message)
            } else if let error = errorMessage {
                Text(error).foregroundColor(.red)
            }
        }
        .padding()
    }
    
    func buttonTouched() {
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
