//
//  ContentView.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 1/29/22.
//

import SwiftUI

struct LoginButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.yellow)
            .foregroundColor(.black)
            .clipShape(Capsule())
    }
}

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
            
            Button("Login"){
                print("User is logged in")
            }
            .buttonStyle(LoginButtonStyle())
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
