//
//  ListView.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 2/3/22.
//

import SwiftUI

struct ListView: View {
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader{ geometry in
            VStack{
                Text("List")
                Menu(viewRouter: viewRouter).frame(width: geometry.size.width, height: geometry.size.height / 15)
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(viewRouter: ViewRouter())
    }
}
