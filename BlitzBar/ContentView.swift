//
//  ContentView.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 1/29/22.
//

import SwiftUI
import Foundation

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
    @StateObject var viewRouter: ViewRouter
    
    @State var goodSignin = false
    @State var gotoCreateAccount = false
    
    var body: some View {
        if goodSignin{
            MainRouter(viewRouter: viewRouter)
        }else if gotoCreateAccount{
            CreateAccount(viewRouter: viewRouter)
        }else{
            loginView(viewRouter: viewRouter, goodSignin: $goodSignin, gotoCreateAccount: $gotoCreateAccount)
        }
        
    }
}

struct loginView : View{
    @StateObject var viewRouter: ViewRouter
    @Binding var goodSignin: Bool
    @Binding var gotoCreateAccount: Bool
    
    @State var useremail: String = ""
    @State var password: String = ""
    var body: some View{
        GeometryReader{ geometry in
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
                    viewRouter.currentPage = "MapView"
                    self.goodSignin = true
                }){
                    Text("Login")
                }
                .buttonStyle(primaryButton())
                
                ZStack(alignment: .bottomLeading){
                    Button(action:{
                        viewRouter.currentPage = "CreateAccount"
                        self.gotoCreateAccount = true
                    }){
                        Text("Create Account")
                    }
                    .buttonStyle(secondaryButton())
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .accentColor(.black)
            .background(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewRouter: ViewRouter())
    }
}
