//
//  MainRouter.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 2/4/22.
//

import SwiftUI

struct MainRouter: View {
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        if viewRouter.currentPage == "SettingsView" {
            SettingsView(viewRouter: viewRouter)
        }else if viewRouter.currentPage == "FriendsView"{
            FriendsView(viewRouter: viewRouter)
        }else if viewRouter.currentPage == "ListView"{
            ListView(viewRouter: viewRouter)
        }else if viewRouter.currentPage == "MapView"{
            MapView(viewRouter: viewRouter)
        }else if viewRouter.currentPage == "ContentView"{
            ContentView(viewRouter: viewRouter)
        }else if viewRouter.currentPage == "CreateAccount"{
            CreateAccount(viewRouter: viewRouter)
        }else{
            ContentView(viewRouter: viewRouter)
        }
    }
}

struct MainRouter_Previews: PreviewProvider {
    static var previews: some View {
        MainRouter(viewRouter: ViewRouter())
    }
}
