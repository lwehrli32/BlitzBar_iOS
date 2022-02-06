//
//  FriendsView.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 2/3/22.
//

import SwiftUI

struct FriendsView: View {
    @StateObject var viewRouter: ViewRouter
    
    var body: some View {
        GeometryReader{ geometry in
            VStack(spacing: 0){
                VStack{
                    Text("Friends")
                }
                .frame(width: .infinity, height: geometry.size.height - 45)
                Menu(viewRouter: viewRouter)
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView(viewRouter: ViewRouter())
    }
}
