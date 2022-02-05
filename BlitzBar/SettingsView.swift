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
                .frame(width: geometry.size.width, height: geometry.size.height)
                Menu(viewRouter: viewRouter)
                    .frame(width: geometry.size.width, height: geometry.size.height / 15)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(viewRouter: ViewRouter())
    }
}
