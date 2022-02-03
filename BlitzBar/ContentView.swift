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
    
    @State var goodSignin = false
    
    var body: some View {
        if goodSignin{
            CreateAccount()
        }else{
            loginView(goodSignin: $goodSignin)
        }
        
    }
}

struct loginView : View{
    @Binding var goodSignin: Bool
    
    @State var useremail: String = ""
    @State var password: String = ""
    var body: some View{
        //let preferences = UserDefaults.standard
        //let loggedInKey = "loggedin"
        
        VStack(alignment: .center){
            BBLogo()
            Text("BlitzBar")
                .padding()
                .font(.title)
                .foregroundColor(.black)
            
            VStack (alignment: .leading){
                Text("Email")
                    .foregroundColor(.black)
            
                TextField("", text: $useremail)
                    .padding()
                    .background(lightGreyColor)
                    .foregroundColor(.black)
            }
            .padding()
            
            VStack (alignment: .leading){
                Text("Password")
                    .foregroundColor(.black)
                SecureField("Password", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .foregroundColor(.black)
            }
            .padding()
            
            Button(action: {
                print("Login button pressed")
                //let loggedIn = 1
                //preferences.set(loggedIn, forKey: loggedInKey)
                
                //_ = preferences.synchronize()
                self.goodSignin = true
                //let cA = CreateAccount(buttonClick: $showA)
                print("Login succeeded")
            }){
                Text("Login")
            }
            .buttonStyle(LoginButtonStyle())
            
            ZStack(alignment: .bottomLeading){
                Text("Create Account")
                    .padding(.top, 50)
                    .foregroundColor(.black)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity) // 1
                .accentColor(.black)
                .background(.white)
    }
}

struct AppHome: View {
    
    var body: some View {
        VStack {
        Text("Hello freaky world!")
        Text("You are signed in.")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
