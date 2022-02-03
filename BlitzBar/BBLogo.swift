//
//  BBLogo.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 1/29/22.
//

import SwiftUI

struct BBLogo: View {
    var body: some View {
        Image("logo_512x512")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct BBLogo_Previews: PreviewProvider {
    static var previews: some View {
        BBLogo()
    }
}
