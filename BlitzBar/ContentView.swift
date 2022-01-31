//
//  ContentView.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 1/29/22.
//

import SwiftUI

struct ContentView: View {
    @State private var useremail: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .center){
            BBLogo()
            Text("BlitzBar")
                .padding()
                .font(.title)
            TextField("Email", text: $useremail)
                .padding()
            SecureField("Password", text: $password)
                .padding()
        }
        NavigationLink(destination: CreateAccount()) {
            Text("Do Something")
        }
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
