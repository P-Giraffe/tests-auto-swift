//
//  PrepareEmailView.swift
//  demo
//
//  Created by Maxime Britto on 11/05/2021.
//

import SwiftUI

struct PrepareEmailView: View {
    @State var content:String = ""
    var body: some View {
        NavigationView {
            VStack {
                Text("Entrez votre message")
                TextEditor(text: $content)
                NavigationLink(
                    destination: SendEmailView(),
                    label: {
                        Text("Suivant")
                    })
            }
        }
    }
}

struct PrepareEmailView_Previews: PreviewProvider {
    static var previews: some View {
        PrepareEmailView()
    }
}
