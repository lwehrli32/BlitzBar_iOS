//
//  SettingsView.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 2/3/22.
//

import SwiftUI

struct SettingsView: View {
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader{ geometry in
            VStack(spacing: 0){
                VStack{
                    Text("Settings")
                }
                .frame(width: .infinity, height: geometry.size.height - 45)
                Menu(viewRouter: viewRouter)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewRouter: ViewRouter())
    }
}
