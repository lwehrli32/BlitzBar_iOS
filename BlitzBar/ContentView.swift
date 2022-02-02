//
//  ContentView.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 1/29/22.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)


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
        let preferences = UserDefaults.standard
        let loggedInKey = "loggedin"
        
        VStack(alignment: .center){
            BBLogo()
            Text("BlitzBar")
                .padding()
                .font(.title)
            TextField("Email", text: $useremail)
                .padding()
                .background(lightGreyColor)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
            
            Button("Login"){
                
                let loggedIn = 1
                preferences.set(loggedIn, forKey: loggedInKey)
                
                let saved = preferences.synchronize()
                
                NavigationLink(destination: MapView()) {
                }
            }
            .buttonStyle(LoginButtonStyle())
        }
        
        Spacer()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
