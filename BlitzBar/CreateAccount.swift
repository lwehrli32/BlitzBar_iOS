//
//  CreateAccount.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 1/30/22.
//

import SwiftUI
import Foundation

struct CreateAccount: View {
    @StateObject var viewRouter: ViewRouter
    
    @State var goBack = false
    @State var gotoFirstAndLastName = true
    @State var gotoEmail = false
    
    var body: some View {
        if goBack{
            ContentView(viewRouter: viewRouter)
        }else{
            GeometryReader{ geometry in
                VStack(alignment: .center){
                    BBLogo()
                    
                    Text("Create BlitzBar Account")
                        .padding()
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    if gotoFirstAndLastName{
                        show_first_and_last_name(gotoFirstAndLastName: $gotoFirstAndLastName, gotoEmail: $gotoEmail)
                    }else if gotoEmail{
                        show_email()
                    }
                    
                    ZStack(alignment: .bottomLeading){
                        Button(action:{
                            viewRouter.currentPage = "ContentView"
                        }){
                            Text("Login")
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
}

struct show_email: View{
    var body: some View{
        Button(action:{
            print("Next Screen")
        }){
            Text("Next")
        }
        .buttonStyle(primaryButton())
    }
}

struct show_first_and_last_name: View{
    @Binding var gotoFirstAndLastName: Bool
    @Binding var gotoEmail: Bool
    @State var firstName = ""
    @State var lastName = ""
    
    var body: some View{
        VStack(alignment: .center){
            VStack(alignment: .leading){
                Text("First Name")
                    .foregroundColor(.black)
                TextField("", text: $firstName)
                    .padding()
                    .background(lightGreyColor)
                    .foregroundColor(.black)
            }
            .padding()
            
            VStack(alignment: .leading){
                Text("Last Name")
                    .foregroundColor(.black)
                TextField("", text: $lastName)
                    .padding()
                    .background(lightGreyColor)
                    .foregroundColor(.black)
            }
            .padding()
            
            Button(action:{
                self.gotoFirstAndLastName = false
                self.gotoEmail = true
            }){
                Text("Next")
            }
            .buttonStyle(primaryButton())
        }
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount(viewRouter: ViewRouter())
    }
}
