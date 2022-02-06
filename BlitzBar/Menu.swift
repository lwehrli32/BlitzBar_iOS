//
//  Menu.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 2/3/22.
//

import SwiftUI

struct Menu: View {
    @StateObject var viewRouter: ViewRouter
    
    @State var gotoMap = false
    @State var gotoContent = false
    
    // icon info
    @State var map_icon = "map_icon"
    @State var map_label = "Map"
    @State var friends_icon = "friends_icon"
    @State var friends_label = "Friends"
    @State var settings_icon = "setting_icon"
    @State var settings_label = "Settings"
    @State var list_icon = "list_icon"
    @State var list_label = "Bar List"
    
    let num_icons = 4
    let height_ratio = 2
    
    var body: some View {
        GeometryReader{ geometry in
            HStack{
                MenuIcons(viewRouter: viewRouter, icon: map_icon, label: map_label, width: geometry.size.width/CGFloat(num_icons), height: geometry.size.height/CGFloat(height_ratio), assignedPage: "MapView")
                MenuIcons(viewRouter: viewRouter, icon: list_icon, label: list_label, width: geometry.size.width/CGFloat(num_icons), height: geometry.size.height/CGFloat(height_ratio), assignedPage: "ListView")
                MenuIcons(viewRouter: viewRouter, icon: friends_icon, label: friends_label, width: geometry.size.width/CGFloat(num_icons), height: geometry.size.height/CGFloat(height_ratio), assignedPage: "FriendsView")
                MenuIcons(viewRouter: viewRouter, icon: settings_icon, label: settings_label, width: geometry.size.width/CGFloat(num_icons), height: geometry.size.height/CGFloat(height_ratio), assignedPage: "SettingsView")
            }
            //.frame(maxWidth: .infinity, minHeight: , maxHeight: )
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.white)
        }
    }
}

struct MenuIcons: View {
    
    @StateObject var viewRouter: ViewRouter
    let icon, label: String
    let width, height: CGFloat
    let assignedPage: String
    
    var body: some View{
        VStack{
            Image(self.icon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: width, height: height)
                .padding(.top, 10)
            Text(self.label)
                .font(.footnote)
                .foregroundColor(.black)
            Spacer()
        }
        .onTapGesture {
            viewRouter.currentPage = assignedPage
        }
        .edgesIgnoringSafeArea(.all)
        .padding(.horizontal, -4)
        .foregroundColor(viewRouter.currentPage == assignedPage ? Color(.black) : .gray)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu(viewRouter: ViewRouter())
    }
}
