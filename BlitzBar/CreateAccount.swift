//
//  CreateAccount.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 1/30/22.
//

import SwiftUI

struct CreateAccount: View {
    @State var goBack = false
    
    var body: some View {
        if goBack{
            ContentView()
        }else{
            Text("hello world!")
            
            Button(action:{
                self.goBack = true
            }){
                Text("Go Back")
            }
        }
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}
