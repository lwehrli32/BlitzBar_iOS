//
//  Menu.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 2/3/22.
//

import SwiftUI

struct Menu: View {
    @State var gotoMap = false
    @State var gotoContent = false
    
    var body: some View {
        if gotoMap{
            MapView()
        }else if gotoContent{
            ContentView()
        }
        
        HStack{
            Button(action:{
                print("going to map view. . .")
                self.gotoMap = true
            }){
                Image("map_icon")
                    .padding()
            }
            
            Button(action:{
                print("Going to content view. . . ")
                self.gotoContent = true
            }){
                Image("friends_icon")
                    .padding()
            }
            
            Image("list_icon")
                .padding()
            
            Image("setting_icon")
                .padding()
            
        }
        .background(.white)
        .frame(maxWidth: .infinity, maxHeight: 20)
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
