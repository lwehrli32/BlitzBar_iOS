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
            VStack(spacing: 0){
                VStack{
                    Text("List")
                }
                .frame(width: .infinity, height: geometry.size.height - 45)
                Menu(viewRouter: viewRouter)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(viewRouter: ViewRouter())
    }
}
