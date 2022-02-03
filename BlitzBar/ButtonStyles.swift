//
//  ButtonStyles.swift
//  BlitzBar
//
//  Created by Lukas Wehrli on 2/2/22.
//

import SwiftUI

struct primaryButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.yellow)
            .foregroundColor(.black)
            .clipShape(Capsule())
    }
}

struct secondaryButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .padding(.top, 50)
            .foregroundColor(.yellow)
    }
}
